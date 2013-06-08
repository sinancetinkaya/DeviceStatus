.class public Lcom/wssyncmldm/eng/core/XDMWorkspace;
.super Ljava/lang/Object;
.source "XDMWorkspace.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUICInterface;


# instance fields
.field public IsSequenceProcessing:Z

.field public appId:I

.field public atomic:Lcom/wssyncmldm/eng/parser/XDMParserAtomic;

.field public atomicFlag:Z

.field public atomicList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public atomicStep:Lcom/wssyncmldm/interfaces/XDMInterface$XDMAtomicStep;

.field public authCount:I

.field public authState:I

.field public buf:Ljava/io/ByteArrayOutputStream;

.field public bufsize:I

.field public cmdID:I

.field public credType:I

.field public dataBuffered:Z

.field public dataTotalSize:I

.field public dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public e:Lcom/wssyncmldm/eng/core/XDMEncoder;

.field public endOfMsg:Z

.field public inAtomicCmd:Z

.field public inSequenceCmd:Z

.field public isFinal:Z

.field public list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public m_szClientPW:Ljava/lang/String;

.field public m_szDownloadURI:Ljava/lang/String;

.field public m_szHostname:Ljava/lang/String;

.field public m_szMsgRef:Ljava/lang/String;

.field public m_szProtocol:Ljava/lang/String;

.field public m_szServerID:Ljava/lang/String;

.field public m_szServerPW:Ljava/lang/String;

.field public m_szSessionID:Ljava/lang/String;

.field public m_szSourceURI:Ljava/lang/String;

.field public m_szStatusReturnCode:Ljava/lang/String;

.field public m_szSvcState:Ljava/lang/String;

.field public m_szTargetURI:Ljava/lang/String;

.field public m_szUserName:Ljava/lang/String;

.field public maxMsgSize:I

.field public maxObjSize:I

.field public msgID:I

.field public nTNDSFlag:Z

.field public nUpdateMechanism:C

.field public nextMsg:Z

.field public nextNonce:[B

.field public numAction:I

.field public om:Lcom/wssyncmldm/eng/core/XDMOmTree;

.field public p:Lcom/wssyncmldm/eng/parser/XDMParser;

.field public port:I

.field public prevBufPos:I

.field public procState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMProcessingState;

.field public procStep:I

.field public recvHmacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

.field public results:Lcom/wssyncmldm/eng/parser/XDMParserResults;

.field public resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public sendChal:Z

.field public sendPos:I

.field public sendRemain:Z

.field public sequence:Lcom/wssyncmldm/eng/parser/XDMParserSequence;

.field public sequenceList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public serverAuthState:I

.field public serverCredType:I

.field public serverMaxMsgSize:I

.field public serverMaxObjSize:I

.field public serverNextNonce:[B

.field public sessionAbort:I

.field public sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public state:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

.field public statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

.field public targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

.field public tempResults:Lcom/wssyncmldm/eng/parser/XDMParserResults;

.field public tmpItem:Lcom/wssyncmldm/eng/parser/XDMParserItem;

.field public uicAlert:Lcom/wssyncmldm/eng/parser/XDMParserAlert;

.field public uicData:Lcom/wssyncmldm/eng/core/XDMList;

.field public uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

.field public uicOption:Lcom/wssyncmldm/eng/core/XDMUicOption;

.field public userData:Ljava/lang/Object;

.field public ws:Lcom/wssyncmldm/eng/core/XDMWorkspace;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szDownloadURI:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSvcState:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szUserName:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szStatusReturnCode:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerID:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szServerPW:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szClientPW:Ljava/lang/String;

    .line 108
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nextNonce:[B

    .line 109
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverNextNonce:[B

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szProtocol:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szHostname:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSourceURI:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szTargetURI:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szSessionID:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->m_szMsgRef:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 118
    iput v3, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authState:I

    .line 119
    iput v3, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverAuthState:I

    .line 120
    iput v4, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->credType:I

    .line 121
    iput v4, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverCredType:I

    .line 122
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sendChal:Z

    .line 123
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inAtomicCmd:Z

    .line 124
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 125
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->inSequenceCmd:Z

    .line 126
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sequenceList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 128
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMOmTree;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMOmTree;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->om:Lcom/wssyncmldm/eng/core/XDMOmTree;

    .line 129
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMEncoder;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMEncoder;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->e:Lcom/wssyncmldm/eng/core/XDMEncoder;

    .line 130
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 131
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 132
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 133
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 134
    invoke-static {}, Lcom/wssyncmldm/eng/core/XDMLinkedList;->xdmListCreateLinkedList()Lcom/wssyncmldm/eng/core/XDMLinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 135
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->results:Lcom/wssyncmldm/eng/parser/XDMParserResults;

    .line 137
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->buf:Ljava/io/ByteArrayOutputStream;

    .line 139
    const/16 v0, 0x1c00

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->bufsize:I

    .line 140
    const/16 v0, 0x1400

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->maxMsgSize:I

    .line 141
    const/high16 v0, 0x10

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->maxObjSize:I

    .line 143
    const/16 v0, 0x1400

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxMsgSize:I

    .line 144
    const/high16 v0, 0x10

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->serverMaxObjSize:I

    .line 146
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->endOfMsg:Z

    .line 147
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->syncHeader:Lcom/wssyncmldm/eng/parser/XDMParserSyncheader;

    .line 148
    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sessionAbort:I

    .line 149
    sget-object v0, Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;->XDM_STATE_INIT:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dmState:Lcom/wssyncmldm/interfaces/XDMInterface$XDMSyncMLState;

    .line 150
    iput v5, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->cmdID:I

    .line 151
    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->appId:I

    .line 152
    iput v5, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->msgID:I

    .line 153
    iput v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->authCount:I

    .line 155
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->dataBuffered:Z

    .line 156
    iput-boolean v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->IsSequenceProcessing:Z

    .line 157
    iput-char v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->nUpdateMechanism:C

    .line 158
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMHmacData;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMHmacData;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->recvHmacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 160
    sget-object v0, Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;->UIC_NONE:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicFlag:Lcom/wssyncmldm/interfaces/XUICInterface$XUICFlag;

    .line 161
    iput-object v2, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->uicData:Lcom/wssyncmldm/eng/core/XDMList;

    .line 162
    return-void
.end method


# virtual methods
.method public xdmFreeWorkSpace()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_7

    .line 171
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->targetRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_d

    .line 175
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->sourceRefList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_13

    .line 179
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->list:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 181
    :cond_13
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_19

    .line 183
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->statusList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 185
    :cond_19
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_1f

    .line 187
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->resultsList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 190
    :cond_1f
    iget-object v0, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    if-eqz v0, :cond_25

    .line 192
    iput-object v1, p0, Lcom/wssyncmldm/eng/core/XDMWorkspace;->atomicList:Lcom/wssyncmldm/eng/core/XDMLinkedList;

    .line 195
    :cond_25
    return-void
.end method
