.class public Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;
.super Ljava/lang/Object;
.source "XDBFactoryBootstrap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/db/sql/XDMDbSql;


# static fields
.field public static final DEFAULT_NONCE:Ljava/lang/String; = "MTIzNDU="

.field public static final FACTORYBOOTSTRAP_CLIENTID:I = 0x1

.field public static final FACTORYBOOTSTRAP_CLIENTPWD:I = 0x2

.field public static final FACTORYBOOTSTRAP_SERVERPWD:I = 0x0

.field public static final OSPS_SERVER_PWD:Ljava/lang/String; = "T1NQIERNIFNlcnZlcg=="

.field public static OSP_ProfileName:[Ljava/lang/String; = null

.field public static OSP_ServerID:[Ljava/lang/String; = null

.field public static OSP_ServerUrl:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "5e8o9279r2"

    aput-object v1, v0, v2

    const-string v1, "x6g1q14r75"

    aput-object v1, v0, v3

    const-string v1, "T-Mobile"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ServerID:[Ljava/lang/String;

    .line 27
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Lawmo-Server"

    aput-object v1, v0, v2

    const-string v1, "Fumo-Server"

    aput-object v1, v0, v3

    const-string v1, "Mformation"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ProfileName:[Ljava/lang/String;

    .line 28
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "https://dm.samsungdive.com/v1/sdm/magicsync/dm"

    aput-object v1, v0, v2

    const-string v1, "https://dms.ospserver.net/v1/device/magicsync/mdm"

    aput-object v1, v0, v3

    const-string v1, "http://mfiop12.mformation.com:80/oma/iop"

    aput-object v1, v0, v4

    sput-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ServerUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdbFBGenerateFactoryNonce()Ljava/lang/String;
    .registers 10

    .prologue
    .line 124
    const-string v6, ""

    .line 126
    .local v6, szNonce:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 127
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 128
    .local v4, seed:J
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 129
    .local v3, rnd:Ljava/util/Random;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SSNextNonce"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, szTemp:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 132
    .local v0, buf:[B
    invoke-static {v0}, Lcom/wssyncmldm/eng/core/XDMBase64;->xdmBase64Encode([B)[B

    move-result-object v2

    .line 133
    .local v2, encoder:[B
    new-instance v6, Ljava/lang/String;

    .end local v6           #szNonce:Ljava/lang/String;
    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 135
    .restart local v6       #szNonce:Ljava/lang/String;
    return-object v6
.end method

.method public static xdbFBGetFactoryBootstrapData(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .parameter "pNVMSyncMLDMInfo"
    .parameter "nIdex"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v3, 0x0

    .line 40
    .local v3, szNonce:Ljava/lang/String;
    const/4 v4, 0x0

    .line 41
    .local v4, xdbURLParser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    const/4 v5, 0x0

    .line 42
    .local v5, xdbURLParser2:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v2

    .local v2, szDevid:Ljava/lang/String;
    move-object v1, p0

    .line 44
    check-cast v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 45
    sget-object v6, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ProfileName:[Ljava/lang/String;

    aget-object v6, v6, p1

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    .line 46
    sget-object v6, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ServerID:[Ljava/lang/String;

    aget-object v6, v6, p1

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    .line 47
    sget-object v6, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ServerUrl:[Ljava/lang/String;

    aget-object v6, v6, p1

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 48
    iput v7, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 52
    const-string v6, "w7"

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AppID:Ljava/lang/String;

    .line 53
    const-string v6, "CLCRED"

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthLevel:Ljava/lang/String;

    .line 54
    const-string v6, "SRVCRED"

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerAuthLevel:Ljava/lang/String;

    .line 57
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v4

    .line 58
    iget-object v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 59
    iget-object v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 60
    iget-object v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path:Ljava/lang/String;

    .line 61
    iget v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iput v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 62
    iget-object v6, v4, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 63
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 65
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v5

    .line 66
    iget-object v6, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 67
    iget-object v6, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 68
    iget-object v6, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Path_Org:Ljava/lang/String;

    .line 69
    iget v6, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iput v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 70
    iget-object v6, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 71
    iput-boolean v7, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->bChangedProtocol:Z

    .line 73
    const/4 v6, 0x3

    if-ge p1, v6, :cond_cd

    .line 75
    iput v8, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->AuthType:I

    .line 76
    iput v8, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->nServerAuthType:I

    .line 78
    if-ne p1, v9, :cond_b8

    .line 80
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePasswd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    .line 81
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v2, v6, v8}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePasswd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 82
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v2, v6, v9}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpGeneratePasswd(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 90
    :goto_89
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->xdbFBGenerateFactoryNonce()Ljava/lang/String;

    move-result-object v3

    .line 94
    new-instance v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;-><init>()V

    .line 95
    .local v0, dm_AccXNodeInfo:Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;
    const-string v6, "./DMAcc/OSP"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAccount:Ljava/lang/String;

    .line 96
    const-string v6, "./DMAcc/OSP/AppAddr/AppAddrX"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAppAddr:Ljava/lang/String;

    .line 97
    const-string v6, "./DMAcc/OSP/AppAddr/AppAddrX/Port/PortX"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAppAddrPort:Ljava/lang/String;

    .line 98
    const-string v6, "./DMAcc/OSP/AppAuth/ClientSide"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szClientAppAuth:Ljava/lang/String;

    .line 99
    const-string v6, "./DMAcc/OSP/AppAuth/ServerSide"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szServerAppAuth:Ljava/lang/String;

    .line 100
    const-string v6, "./DMAcc/OSP/ToConRef/Connectivity Reference Name"

    iput-object v6, v0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szToConRef:Ljava/lang/String;

    .line 101
    const/16 v6, 0x83

    invoke-static {v6, v0}, Lcom/wssyncmldm/db/sql/XDMDbSqlQuery;->xdmDbSqlCreate(ILjava/lang/Object;)I

    .line 104
    iput-object v3, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonce:Ljava/lang/String;

    .line 105
    iput-object v3, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonce:Ljava/lang/String;

    .line 106
    iput v8, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerNonceFormat:I

    .line 107
    iput v8, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ClientNonceFormat:I

    .line 113
    .end local v0           #dm_AccXNodeInfo:Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;
    :goto_b7
    return-object v1

    .line 86
    :cond_b8
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFullDeviceID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 87
    iget-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    iget-object v7, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/wssyncmldm/db/file/XDBFactoryBootstrapadapter;->xdbFBAdpOspGenerateDevicePwd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Password:Ljava/lang/String;

    .line 88
    const-string v6, "T1NQIERNIFNlcnZlcg=="

    iput-object v6, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPwd:Ljava/lang/String;

    goto :goto_89

    .line 111
    :cond_cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong Index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static xdbFBGetFactoryBootstrapServerID(I)Ljava/lang/String;
    .registers 2
    .parameter "nIdex"

    .prologue
    .line 118
    sget-object v0, Lcom/wssyncmldm/db/file/XDBFactoryBootstrap;->OSP_ServerID:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
