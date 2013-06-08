.class public Lcom/wssyncmldm/agent/XDMAppConnectSetting;
.super Ljava/lang/Object;
.source "XDMAppConnectSetting.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# instance fields
.field public authtype:I

.field public bProxy_status:Z

.field public bSecure_status:Z

.field public bStaticdns_status:Z

.field public bStaticip_status:Z

.field public csd_password:[C

.field public csd_username:[C

.field public eBearerType:I

.field public gateway_addr:[C

.field public hProtoAccount:I

.field public m_szApn:Ljava/lang/String;

.field public m_szCallType:Ljava/lang/String;

.field public m_szDialupNumber:Ljava/lang/String;

.field public m_szGprsName:Ljava/lang/String;

.field public m_szGprsPassword:Ljava/lang/String;

.field public m_szGprsUserName:Ljava/lang/String;

.field public m_szHomePgString:Ljava/lang/String;

.field public m_szMmsc:Ljava/lang/String;

.field public m_szMmsname:Ljava/lang/String;

.field public m_szMmsproxy:Ljava/lang/String;

.field public m_szPrimaryProxyAddr:Ljava/lang/String;

.field public m_szProfileString:Ljava/lang/String;

.field public mmspxport:I

.field public nLinger_time:I

.field public nPrimary_proxy_port:I

.field public nProxyAddrType:I

.field public nWsp_PortNum:I

.field public phoneip_addr:[C

.field public primary_DNS:[C

.field public protocoltype:I

.field public secondary_DNS:[C

.field public trafficclass:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    const/16 v1, 0x80

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szHomePgString:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szProfileString:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szGprsPassword:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szGprsUserName:Ljava/lang/String;

    .line 53
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->csd_password:[C

    .line 54
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->csd_username:[C

    .line 55
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->primary_DNS:[C

    .line 56
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->secondary_DNS:[C

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    .line 58
    iput v2, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->authtype:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szDialupNumber:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szCallType:Ljava/lang/String;

    .line 61
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->gateway_addr:[C

    .line 62
    new-array v0, v3, [C

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->phoneip_addr:[C

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szMmsc:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szMmsproxy:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->mmspxport:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szMmsname:Ljava/lang/String;

    .line 71
    return-void
.end method
