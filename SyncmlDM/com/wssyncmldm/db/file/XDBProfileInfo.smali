.class public Lcom/wssyncmldm/db/file/XDBProfileInfo;
.super Ljava/lang/Object;
.source "XDBProfileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AppID:Ljava/lang/String;

.field public AuthLevel:Ljava/lang/String;

.field public AuthType:I

.field public ClientNonce:Ljava/lang/String;

.field public ClientNonceFormat:I

.field public ConBackup:Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

.field public ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

.field public MagicNumber:I

.field public NetworkConnName:Ljava/lang/String;

.field public ObexType:I

.field public Password:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Path_Org:Ljava/lang/String;

.field public PrefConRef:Ljava/lang/String;

.field public ProfileName:Ljava/lang/String;

.field public Protocol:Ljava/lang/String;

.field public Protocol_Org:Ljava/lang/String;

.field public ServerAuthLevel:Ljava/lang/String;

.field public ServerID:Ljava/lang/String;

.field public ServerIP:Ljava/lang/String;

.field public ServerIP_Org:Ljava/lang/String;

.field public ServerNonce:Ljava/lang/String;

.field public ServerNonceFormat:I

.field public ServerPort:I

.field public ServerPort_Org:I

.field public ServerPwd:Ljava/lang/String;

.field public ServerUrl:Ljava/lang/String;

.field public ServerUrl_Org:Ljava/lang/String;

.field public UserName:Ljava/lang/String;

.field public bChangedProtocol:Z

.field public nNetworkConnIndex:I

.field public nServerAuthType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 50
    const/16 v0, 0x50

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path_Org:Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ObexType:I

    .line 60
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 61
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->PrefConRef:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonceFormat:I

    .line 75
    iput v1, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->NetworkConnName:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nNetworkConnIndex:I

    .line 81
    new-instance v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBInfoConRef;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 82
    new-instance v0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConBackup:Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;

    .line 83
    return-void
.end method
