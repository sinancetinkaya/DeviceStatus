.class public Lcom/wssyncmldm/tp/XTPAdapter;
.super Ljava/lang/Object;
.source "XTPAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;
    }
.end annotation


# static fields
.field public static g_ConnMgr:Landroid/net/ConnectivityManager;

.field public static g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

.field public static g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

.field private static m_bIsConnected:Z

.field private static m_bUserCancel:Z

.field private static m_nHttpDebugCount:I

.field private static m_nTpappid:I

.field private static m_szCookie:Ljava/lang/String;


# instance fields
.field private final RECEIVE_BUFFER_SIZE:I

.field private m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

.field private m_Input:Ljava/io/InputStream;

.field private m_Output:Ljava/io/OutputStream;

.field private m_SSLContext:Ljavax/net/ssl/SSLContext;

.field private m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private m_SSLSocket:Ljavax/net/ssl/SSLSocket;

.field private m_Socket:Ljava/net/Socket;

.field private m_WakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private m_bIsProxyServer:Z

.field private m_conProxy:Ljava/net/Proxy;

.field private m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

.field private m_nHttpBodyLength:I

.field private m_szHttpHeaderData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    sput-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    .line 69
    sput-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 71
    sput-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    .line 73
    sput-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    .line 79
    sput-boolean v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bUserCancel:Z

    .line 91
    sput-boolean v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsConnected:Z

    .line 94
    sput v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nTpappid:I

    .line 95
    sput v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpDebugCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_conProxy:Ljava/net/Proxy;

    .line 75
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    .line 77
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 83
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    .line 84
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 85
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    .line 86
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 87
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    .line 88
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    .line 89
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsProxyServer:Z

    .line 97
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 100
    const/16 v0, 0x1400

    iput v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->RECEIVE_BUFFER_SIZE:I

    .line 104
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    if-nez v0, :cond_2c

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wssyncmldm/tp/XTPHttpObj;

    sput-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    .line 106
    :cond_2c
    return-void
.end method

.method public static xtpAdpApnClose()V
    .registers 1

    .prologue
    .line 1499
    const-string v0, "xtpAdpApnClose"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1500
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnDisable()V

    .line 1501
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpEndConnectivity()V

    .line 1502
    return-void
.end method

.method public static xtpAdpApnDisable()V
    .registers 2

    .prologue
    .line 152
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    if-eqz v0, :cond_1d

    .line 156
    const-string v0, "mConnectivityListener is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 158
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/common/NetworkConnectivityListener;->stopListening()V

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 161
    :cond_1d
    return-void
.end method

.method public static xtpAdpCheckURL(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "szObjectURL"
    .parameter "szRespURL"

    .prologue
    .line 2286
    const/4 v0, 0x0

    .line 2287
    .local v0, nRet:I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2289
    :cond_d
    const-string v3, "Input Uri is NULL"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 2290
    const/4 v3, -0x5

    .line 2310
    :goto_13
    return v3

    .line 2292
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object URL ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], response URL ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2294
    const/4 v1, 0x0

    .line 2295
    .local v1, parser1:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    const/4 v2, 0x0

    .line 2297
    .local v2, parser2:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    invoke-static {p0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v1

    .line 2298
    invoke-static {p1}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v2

    .line 2300
    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    iget-object v4, v2, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iget-object v4, v2, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iget v4, v2, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    if-eq v3, v4, :cond_66

    .line 2302
    :cond_5e
    const-string v3, "different response url!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2303
    const/4 v0, 0x7

    :goto_64
    move v3, v0

    .line 2310
    goto :goto_13

    .line 2307
    :cond_66
    const/4 v0, 0x0

    goto :goto_64
.end method

.method public static xtpAdpEndConnectivity()V
    .registers 4

    .prologue
    .line 214
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 219
    :try_start_5
    sget-object v1, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_17

    .line 226
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enabledevicemanagement"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    .line 234
    .local v0, e:Ljava/lang/Exception;
    :cond_17
    :goto_17
    return-void

    .line 230
    .end local v0           #e:Ljava/lang/Exception;
    :catch_18
    move-exception v0

    .line 232
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17
.end method

.method private xtpAdpGetHttpInfo(I)I
    .registers 14
    .parameter "appId"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v6, -0x1

    .line 1625
    const/4 v2, 0x0

    .line 1627
    .local v2, ret:I
    sget-object v7, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    if-nez v7, :cond_a

    move v2, v6

    .line 1686
    .end local v2           #ret:I
    :cond_9
    :goto_9
    return v2

    .line 1630
    .restart local v2       #ret:I
    :cond_a
    sget-object v7, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v7, v7, p1

    iput p1, v7, Lcom/wssyncmldm/tp/XTPHttpObj;->appId:I

    .line 1632
    const-string v5, ""

    .line 1633
    .local v5, szServerURL:Ljava/lang/String;
    const-string v3, ""

    .line 1635
    .local v3, szProxyAddress:Ljava/lang/String;
    sget-object v7, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v7, v7, p1

    iget v7, v7, Lcom/wssyncmldm/tp/XTPHttpObj;->appId:I

    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerUrl(I)Ljava/lang/String;

    move-result-object v5

    .line 1636
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 1638
    const-string v7, "ServerURL is null!!"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v2, v6

    .line 1639
    goto :goto_9

    .line 1642
    :cond_2b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServerURL =>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetConRef()Lcom/wssyncmldm/db/file/XDBInfoConRef;

    move-result-object v0

    .line 1646
    .local v0, Conref:Lcom/wssyncmldm/db/file/XDBInfoConRef;
    if-nez v0, :cond_4e

    .line 1648
    const-string v7, "Get Conref from DB is failed"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v2, v6

    .line 1649
    goto :goto_9

    .line 1652
    :cond_4e
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 1654
    .local v4, szSaleCode:Ljava/lang/String;
    iget-object v6, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    iget-object v6, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    const-string v7, "0.0.0.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_70

    const-string v6, "CTC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 1656
    :cond_70
    iput-boolean v9, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 1657
    invoke-virtual {p0, v9}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsProxy(Z)V

    .line 1673
    :goto_75
    invoke-static {v5}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v1

    .line 1674
    .local v1, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v7, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerURL:Ljava/lang/String;

    .line 1675
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v7, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 1676
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget v7, v1, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    iput v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    .line 1677
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iput-boolean v11, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->isServerInfo:Z

    .line 1678
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    invoke-static {v5}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpGetConnectType(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    .line 1680
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1682
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyAddr:Ljava/lang/String;

    .line 1683
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyIP:Ljava/lang/String;

    .line 1684
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v7, v7, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    iput v7, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->proxyPort:I

    goto/16 :goto_9

    .line 1661
    .end local v1           #parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    :cond_c7
    const-string v6, "Proxy Mode"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1662
    iput-boolean v11, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 1663
    invoke-virtual {p0, v11}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsProxy(Z)V

    .line 1665
    const-string v3, "http://"

    .line 1666
    iget-object v6, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1667
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1668
    iget-object v6, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v6, v6, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1669
    new-instance v6, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v9, v9, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    iget-object v10, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v10, v10, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v6, v7, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v6, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_conProxy:Ljava/net/Proxy;

    .line 1670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PX addr :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", and Port : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v7, v7, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto/16 :goto_75
.end method

.method public static xtpAdpGetHttpObjPointer(I)Lcom/wssyncmldm/tp/XTPHttpObj;
    .registers 2
    .parameter "appId"

    .prologue
    .line 2035
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static xtpAdpGetIsConnected()Z
    .registers 2

    .prologue
    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1992
    sget-boolean v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsConnected:Z

    return v0
.end method

.method public static xtpAdpGetUserCancel()Z
    .registers 2

    .prologue
    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_bUserCancel:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2009
    sget-boolean v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bUserCancel:Z

    return v0
.end method

.method private xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "szData1"
    .parameter "szData2"

    .prologue
    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 693
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 698
    :cond_2a
    return-void
.end method

.method private xtpAdpHttpChunkedHeadRead(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 2107
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v1, data:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 2112
    .local v0, c:I
    const/4 v4, 0x1

    :try_start_a
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 2113
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_15

    .line 2139
    :goto_14
    return-object v3

    .line 2116
    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 2118
    :goto_18
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2e

    .line 2120
    const/16 v4, 0xd

    if-ne v0, v4, :cond_40

    .line 2122
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 2123
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_37

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_33

    .line 2139
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    .line 2126
    :cond_33
    :try_start_33
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_18

    .line 2133
    :catch_37
    move-exception v2

    .line 2135
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_14

    .line 2129
    .end local v2           #e:Ljava/lang/Exception;
    :cond_40
    int-to-char v4, v0

    :try_start_41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_37

    goto :goto_18
.end method

.method public static xtpAdpHttpCookieClear()V
    .registers 1

    .prologue
    .line 2002
    const-string v0, ""

    sput-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    .line 2003
    const-string v0, "HttpCookieClear!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2004
    return-void
.end method

.method private xtpAdpHttpHeadRead(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xd

    const/16 v6, 0xa

    .line 1796
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1797
    .local v1, data:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 1801
    .local v0, c:I
    const/4 v4, 0x1

    :try_start_e
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 1802
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    .line 1828
    :goto_18
    return-object v3

    .line 1805
    :cond_19
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 1807
    :goto_1c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_28

    .line 1809
    if-eqz v0, :cond_28

    if-eq v0, v6, :cond_28

    if-ne v0, v7, :cond_3c

    .line 1815
    :cond_28
    if-ne v0, v7, :cond_37

    .line 1817
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 1818
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v6, :cond_37

    .line 1819
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_37} :catch_41

    .line 1828
    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    .line 1812
    :cond_3c
    int-to-char v4, v0

    :try_start_3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1c

    .line 1822
    :catch_41
    move-exception v2

    .line 1824
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private xtpAdpHttpHeaderParser(ILjava/io/InputStream;)I
    .registers 18
    .parameter "appId"
    .parameter "in"

    .prologue
    .line 1833
    const-string v12, ""

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1835
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v12, ""

    invoke-direct {v2, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v2, header:Ljava/lang/StringBuffer;
    const-string v7, ""

    .line 1837
    .local v7, szData:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1838
    .local v5, pos:I
    const-string v9, ""

    .line 1839
    .local v9, szHmac:Ljava/lang/String;
    const-string v8, ""

    .line 1840
    .local v8, szEncoding:Ljava/lang/String;
    const-string v6, ""

    .line 1841
    .local v6, szContentrange:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1842
    .local v4, nContentLen:I
    const/4 v10, 0x0

    .local v10, szHost:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1844
    .local v3, nConnection:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpHeadRead(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 1845
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 1848
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpHeadRead(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 1849
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 1851
    const-string v12, "data is null "

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1852
    const/4 v12, -0x4

    .line 1970
    :goto_36
    return v12

    .line 1855
    :cond_37
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1856
    const/16 v12, 0x20

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1857
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "http"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_83

    if-ltz v5, :cond_83

    const-string v12, " "

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_83

    .line 1859
    add-int/lit8 v12, v5, 0x1

    const-string v13, " "

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1862
    .local v11, szRet:Ljava/lang/String;
    :try_start_79
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_83} :catch_1b0

    .line 1871
    .end local v11           #szRet:Ljava/lang/String;
    :cond_83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pHttpObj[appId].nHttpReturnStatusValue="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v13, v13, p1

    iget v13, v13, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1874
    :cond_a3
    :goto_a3
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpHeadRead(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b5

    .line 1877
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1bb

    .line 1920
    :cond_b5
    const-string v12, "\r\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1922
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    iput v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nHeaderLength:I

    .line 1923
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const/16 v13, 0x400

    if-ge v12, v13, :cond_e6

    .line 1924
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\r\n [_____Receive Header_____]\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1926
    :cond_e6
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    iput-object v10, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpHost:Ljava/lang/String;

    .line 1927
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    iput v4, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    .line 1928
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    iput-object v3, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    .line 1930
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "chunked = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1931
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pHttpObj[appId].nHeaderLength ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v13, v13, p1

    iget v13, v13, Lcom/wssyncmldm/tp/XTPHttpObj;->nHeaderLength:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1932
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pHttpObj[appId].nContentLength ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v13, v13, p1

    iget v13, v13, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1934
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_27b

    .line 1936
    const-string v12, "chunked"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_272

    .line 1937
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    const/4 v13, 0x1

    iput v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    .line 1944
    :goto_163
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_284

    .line 1946
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    iget v12, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    invoke-virtual {p0, v9, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrParserHMAC(Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMHmacData;

    move-result-object v12

    iput-object v12, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 1955
    :goto_175
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_28e

    .line 1957
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    iput-object v6, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    .line 1958
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pContentRange"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v13, v13, p1

    iget-object v13, v13, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1965
    :goto_19d
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1ad

    .line 1967
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    sget-object v13, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    iput-object v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    .line 1970
    :cond_1ad
    const/4 v12, 0x0

    goto/16 :goto_36

    .line 1864
    .restart local v11       #szRet:Ljava/lang/String;
    :catch_1b0
    move-exception v1

    .line 1866
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1867
    const/4 v12, -0x4

    goto/16 :goto_36

    .line 1881
    .end local v1           #e:Ljava/lang/Exception;
    .end local v11           #szRet:Ljava/lang/String;
    :cond_1bb
    const-string v12, "\r\n"

    invoke-virtual {v7, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1882
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1886
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "host:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1887
    if-ltz v5, :cond_1da

    .line 1888
    add-int/lit8 v12, v5, 0x5

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1891
    :cond_1da
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content-length:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1892
    if-ltz v5, :cond_1f4

    .line 1893
    add-int/lit8 v12, v5, 0xf

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1895
    :cond_1f4
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "connection:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1896
    if-ltz v5, :cond_20a

    .line 1897
    add-int/lit8 v12, v5, 0xb

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1899
    :cond_20a
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "x-syncml-hmac:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1900
    if-ltz v5, :cond_220

    .line 1901
    add-int/lit8 v12, v5, 0xe

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1903
    :cond_220
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "transfer-encoding:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1904
    if-ltz v5, :cond_236

    .line 1905
    add-int/lit8 v12, v5, 0x12

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1907
    :cond_236
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content-range:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1908
    if-ltz v5, :cond_24c

    .line 1909
    add-int/lit8 v12, v5, 0xe

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1911
    :cond_24c
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "set-cookie:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1912
    if-ltz v5, :cond_a3

    .line 1914
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "jsessionid"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 1916
    add-int/lit8 v12, v5, 0xb

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    goto/16 :goto_a3

    .line 1939
    :cond_272
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    const/4 v13, 0x0

    iput v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    goto/16 :goto_163

    .line 1942
    :cond_27b
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    const/4 v13, 0x0

    iput v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    goto/16 :goto_163

    .line 1951
    :cond_284
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 1952
    const-string v12, "szHMAC null"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_175

    .line 1962
    :cond_28e
    sget-object v12, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v12, v12, p1

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    goto/16 :goto_19d
.end method

.method private xtpAdpHttpInit(I)I
    .registers 9
    .parameter "appId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1555
    const/4 v0, 0x0

    .line 1557
    .local v0, ret:I
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput p1, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->appId:I

    .line 1558
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    .line 1559
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->AppSockfd:I

    .line 1560
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v4, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->Networkstatus:I

    .line 1561
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->bHttpBufferAlloc:Z

    .line 1562
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->bHttpHeaderParser:Z

    .line 1563
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    .line 1564
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHeaderLength:I

    .line 1565
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->hProtocol:I

    .line 1566
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->httpObjUseable:Z

    .line 1567
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I

    .line 1568
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->dnsQueryRetryCount:I

    .line 1570
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTimerID:I

    .line 1571
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTimerWaitCounter:I

    .line 1572
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTimerUsed:Z

    .line 1573
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-object v6, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    .line 1574
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v5, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->cServerType:I

    .line 1575
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nComingRemoteClose:Z

    .line 1577
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTunnelMode:I

    .line 1578
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTunnelConnected:I

    .line 1580
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "POST"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    .line 1582
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "HTTP/1.1"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    .line 1583
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-object v6, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpHost:Ljava/lang/String;

    .line 1584
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-object v6, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    .line 1585
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput-object v6, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    .line 1586
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    .line 1588
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    invoke-static {p1}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetConnectType(I)I

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    .line 1590
    if-nez p1, :cond_f9

    .line 1593
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v5, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    .line 1594
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "Keep-Alive"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    .line 1595
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "application/vnd.syncml.dm+wbxml"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 1596
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "application/vnd.syncml.dm+wbxml"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    .line 1606
    :cond_d0
    :goto_d0
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetHttpUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    .line 1608
    invoke-direct {p0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetHttpInfo(I)I

    move-result v0

    .line 1609
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    if-ne v1, v4, :cond_11a

    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1611
    const-string v1, "XTP_SSL_TUNNEL_MODE_ACTIVE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1612
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const/4 v2, 0x3

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTunnelMode:I

    .line 1620
    :cond_f8
    :goto_f8
    return v0

    .line 1598
    :cond_f9
    if-ne p1, v4, :cond_d0

    .line 1601
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v5, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    .line 1602
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "Keep-Alive"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    .line 1603
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "application/vnd.oma.dd+xml"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 1604
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const-string v2, "application/vnd.oma.dd+xml"

    iput-object v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    goto :goto_d0

    .line 1614
    :cond_11a
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    if-ne v1, v4, :cond_f8

    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 1616
    const-string v1, "XTP_SSL_TUNNEL_MODE_DEACTIVE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1617
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    iput v5, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTunnelMode:I

    goto :goto_f8
.end method

.method private xtpAdpHttpPsrMakeHeader(II)Ljava/lang/String;
    .registers 8
    .parameter "conLength"
    .parameter "appId"

    .prologue
    const/4 v2, 0x0

    .line 702
    const-string v3, "xtpAdpHttpPsrMakeHeader"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetHttpOpenMode(I)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, szOpenMode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 779
    :goto_10
    return-object v2

    .line 707
    :cond_11
    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 709
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c2

    .line 711
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 712
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 718
    :goto_37
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 719
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 721
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 723
    :cond_5b
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 725
    const-string v3, "no-store, private"

    const-string v4, "Cache-Control"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 729
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    const-string v4, "Connection"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_83
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 734
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    const-string v4, "User-Agent"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_9a
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 739
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    const-string v4, "Accept"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_b1
    const-string v3, "en"

    const-string v4, "Accept-Language"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v3, "utf-8"

    const-string v4, "Accept-Charset"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, szServerHost:Ljava/lang/String;
    const-string v3, "Host"

    invoke-direct {p0, v1, v3}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v1           #szServerHost:Ljava/lang/String;
    :cond_f7
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10e

    .line 753
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    const-string v4, "Content-Type"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_10e
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 758
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    const-string v4, "Cookie"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_125
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_155

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_155
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 767
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 768
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 770
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    if-eqz v3, :cond_19c

    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    array-length v3, v3

    if-eqz v3, :cond_19c

    .line 772
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "x-syncml-hmac"

    invoke-direct {p0, v3, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget-object v3, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v3, v3, p2

    iput-object v2, v3, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    .line 775
    :cond_19c
    iget-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\r\n [_____Make Header_____]\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    goto/16 :goto_10

    .line 716
    :cond_1c2
    const-string v3, "PATH is NULL. Checking the pHttpObj->pRequestUri"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public static xtpAdpLookupHost(Ljava/lang/String;)I
    .registers 7
    .parameter "szHostName"

    .prologue
    .line 2319
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_27

    move-result-object v3

    .line 2327
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 2328
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 2329
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_26
    return v0

    .line 2321
    :catch_27
    move-exception v2

    .line 2323
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_26
.end method

.method public static xtpAdpNetGetProfile(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V
    .registers 1
    .parameter "pNetInfo"

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppGetBootStrapNetInfo()V

    .line 2041
    return-void
.end method

.method public static xtpAdpNetGetProfileData(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V
    .registers 1
    .parameter "pNetInfo"

    .prologue
    .line 2045
    invoke-virtual {p0, p0}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppGetNetInfo(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V

    .line 2046
    return-void
.end method

.method public static xtpAdpNetSaveProfile(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)I
    .registers 3
    .parameter "pNetInfo"

    .prologue
    const/4 v0, 0x0

    .line 2050
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2051
    invoke-virtual {p0, v0, p0}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppProtoSetAccount(ILcom/wssyncmldm/agent/XDMAppProtoNetInfo;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2053
    const-string v0, "The Account Info Change Failed"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2054
    const/4 v0, -0x1

    .line 2056
    :cond_12
    return v0
.end method

.method public static xtpAdpResetWBXMLLog()V
    .registers 1

    .prologue
    .line 2280
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpDebugCount:I

    .line 2281
    return-void
.end method

.method public static xtpAdpSetIsConnected(Z)V
    .registers 1
    .parameter "isCon"

    .prologue
    .line 1997
    sput-boolean p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsConnected:Z

    .line 1998
    return-void
.end method

.method public static xtpAdpSetUserCancel(Z)V
    .registers 3
    .parameter "nCancelFlag"

    .prologue
    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 2015
    sput-boolean p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bUserCancel:Z

    .line 2016
    return-void
.end method

.method private xtpAdpTunnelHandshake(Ljava/net/Socket;I)I
    .registers 16
    .parameter "tunnel"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpMakeSSLTunneling(I)Ljava/lang/String;

    move-result-object v9

    .line 613
    .local v9, szMsg:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 614
    const/4 v11, -0x1

    .line 686
    :goto_b
    return v11

    .line 616
    :cond_c
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    .line 621
    :try_start_12
    const-string v11, "UTF-8"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_17} :catch_4c

    move-result-object v0

    .line 627
    .local v0, b:[B
    :goto_18
    iget-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 628
    iget-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 630
    const/16 v11, 0xc8

    new-array v6, v11, [B

    .line 631
    .local v6, reply:[B
    const/4 v7, 0x0

    .line 632
    .local v7, replyLen:I
    const/4 v5, 0x0

    .line 633
    .local v5, newlinesSeen:I
    const/4 v2, 0x0

    .line 635
    .local v2, headerDone:Z
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    move v8, v7

    .line 637
    .end local v7           #replyLen:I
    .local v8, replyLen:I
    :goto_30
    const/4 v11, 0x2

    if-ge v5, v11, :cond_75

    .line 639
    iget-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 640
    .local v3, i:I
    if-gez v3, :cond_5b

    .line 642
    const-string v11, "Unable to tunnel"

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 645
    :try_start_40
    iget-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 646
    iget-object v11, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4a} :catch_52

    .line 652
    :goto_4a
    const/4 v11, -0x2

    goto :goto_b

    .line 623
    .end local v0           #b:[B
    .end local v2           #headerDone:Z
    .end local v3           #i:I
    .end local v5           #newlinesSeen:I
    .end local v6           #reply:[B
    .end local v8           #replyLen:I
    :catch_4c
    move-exception v4

    .line 625
    .local v4, ignored:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #b:[B
    goto :goto_18

    .line 648
    .end local v4           #ignored:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #headerDone:Z
    .restart local v3       #i:I
    .restart local v5       #newlinesSeen:I
    .restart local v6       #reply:[B
    .restart local v8       #replyLen:I
    :catch_52
    move-exception v1

    .line 650
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4a

    .line 654
    .end local v1           #e:Ljava/io/IOException;
    :cond_5b
    const/16 v11, 0xa

    if-ne v3, v11, :cond_65

    .line 656
    const/4 v2, 0x1

    .line 657
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    .end local v8           #replyLen:I
    .restart local v7       #replyLen:I
    :goto_63
    move v8, v7

    .line 667
    .end local v7           #replyLen:I
    .restart local v8       #replyLen:I
    goto :goto_30

    .line 659
    :cond_65
    const/16 v11, 0xd

    if-eq v3, v11, :cond_bc

    .line 661
    const/4 v5, 0x0

    .line 662
    if-nez v2, :cond_bc

    array-length v11, v6

    if-ge v8, v11, :cond_bc

    .line 664
    add-int/lit8 v7, v8, 0x1

    .end local v8           #replyLen:I
    .restart local v7       #replyLen:I
    int-to-byte v11, v3

    aput-byte v11, v6, v8

    goto :goto_63

    .line 672
    .end local v3           #i:I
    .end local v7           #replyLen:I
    .restart local v8       #replyLen:I
    :cond_75
    :try_start_75
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF-8"

    invoke-direct {v10, v6, v11, v8, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_75 .. :try_end_7d} :catch_ac

    .line 679
    .local v10, szReply:Ljava/lang/String;
    :goto_7d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Proxy returns \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 680
    const-string v11, "HTTP/1.1 200"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a9

    const-string v11, "HTTP/1.0 200"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b4

    .line 682
    :cond_a9
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 674
    .end local v10           #szReply:Ljava/lang/String;
    :catch_ac
    move-exception v4

    .line 676
    .restart local v4       #ignored:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v6, v11, v8}, Ljava/lang/String;-><init>([BII)V

    .restart local v10       #szReply:Ljava/lang/String;
    goto :goto_7d

    .line 685
    .end local v4           #ignored:Ljava/io/UnsupportedEncodingException;
    :cond_b4
    const-string v11, "Unable to tunnel through Proxy"

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 686
    const/4 v11, -0x2

    goto/16 :goto_b

    .end local v10           #szReply:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_bc
    move v7, v8

    .end local v8           #replyLen:I
    .restart local v7       #replyLen:I
    goto :goto_63
.end method

.method private xtpAdpWBXMLLog(I[B)V
    .registers 6
    .parameter "appId"
    .parameter "buffer"

    .prologue
    .line 2259
    invoke-static {}, Lcom/wssyncmldm/agent/XDMDebug;->xdmGetWbxmlFileStatus()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-nez p1, :cond_2c

    .line 2263
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/data/com.wssyncmldm/httpdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpDebugCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".wbxml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/wssyncmldm/agent/XDMDebug;->xdmWriteFile(Ljava/lang/String;[B)V

    .line 2264
    sget v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpDebugCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpDebugCount:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_39

    .line 2272
    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/wssyncmldm/agent/XDMDebug;->xdmGetWbxmlDumpStatus()Z

    move-result v1

    if-eqz v1, :cond_38

    if-nez p1, :cond_38

    .line 2274
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DUMP([BI)V

    .line 2276
    :cond_38
    return-void

    .line 2266
    :catch_39
    move-exception v0

    .line 2268
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public xtpAdpApnActive()I
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpbeginConnectivity()I

    move-result v2

    .line 304
    .local v2, result:I
    if-nez v2, :cond_4a

    .line 306
    const/4 v3, 0x0

    .line 307
    .local v3, szUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 309
    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    sget v6, Lcom/wssyncmldm/tp/XTPAdapter;->m_nTpappid:I

    aget-object v5, v5, v6

    iget-object v3, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyAddr:Ljava/lang/String;

    .line 310
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpEnsurerouteTohost(Ljava/lang/String;)I

    .line 330
    :cond_1a
    :goto_1a
    sget v5, Lcom/wssyncmldm/tp/XTPAdapter;->m_nTpappid:I

    if-nez v5, :cond_44

    .line 331
    const/16 v5, 0x20

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 350
    .end local v3           #szUrl:Ljava/lang/String;
    :goto_23
    return v4

    .line 314
    .restart local v3       #szUrl:Ljava/lang/String;
    :cond_24
    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    sget v6, Lcom/wssyncmldm/tp/XTPAdapter;->m_nTpappid:I

    aget-object v5, v5, v6

    iget-object v3, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 315
    const/4 v0, 0x0

    .line 318
    .local v0, address:Ljava/net/InetAddress;
    :try_start_2d
    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1a

    .line 320
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpEnsurerouteTohost(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/net/UnknownHostException; {:try_start_2d .. :try_end_3a} :catch_3b

    goto :goto_1a

    .line 322
    :catch_3b
    move-exception v1

    .line 324
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 334
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/UnknownHostException;
    :cond_44
    const/16 v5, 0x75

    invoke-static {v5, v7, v7}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_23

    .line 338
    .end local v3           #szUrl:Ljava/lang/String;
    :cond_4a
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6a

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extending DM connectivity returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iAPN_REQUEST_STARTED"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_23

    .line 348
    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extending DM connectivity returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "APN Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnClose()V

    .line 350
    const/4 v4, -0x2

    goto :goto_23
.end method

.method public xtpAdpApnEnable(I)V
    .registers 5
    .parameter "appid"

    .prologue
    .line 130
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {v0}, Lcom/android/common/NetworkConnectivityListener;-><init>()V

    sput-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 133
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/wssyncmldm/XDMService;->g_hApnHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 134
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 136
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3a

    .line 138
    const-string v0, "mConnMgr is null"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 139
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    .line 140
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3a

    .line 142
    const-string v0, "ConnectivityManager is null!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 148
    :goto_39
    return-void

    .line 147
    :cond_3a
    sput p1, Lcom/wssyncmldm/tp/XTPAdapter;->m_nTpappid:I

    goto :goto_39
.end method

.method public xtpAdpApnOpen(I)I
    .registers 11
    .parameter "appId"

    .prologue
    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, nRet:I
    const/4 v5, 0x0

    .line 240
    .local v5, szUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 242
    .local v4, result:I
    const-string v6, ""

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnEnable(I)V

    .line 246
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpbeginConnectivity()I

    move-result v4

    .line 249
    if-nez v4, :cond_6f

    .line 251
    :try_start_11
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 253
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v5, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyAddr:Ljava/lang/String;

    .line 254
    invoke-virtual {p0, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpEnsurerouteTohost(Ljava/lang/String;)I

    .line 274
    :cond_20
    :goto_20
    if-nez p1, :cond_67

    .line 275
    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 298
    :goto_29
    return v3

    .line 258
    :cond_2a
    sget-object v6, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v6, v6, p1

    iget-object v5, v6, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_5e

    .line 260
    const/4 v0, 0x0

    .line 263
    .local v0, address:Ljava/net/InetAddress;
    :try_start_47
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_20

    .line 265
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpEnsurerouteTohost(Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/net/UnknownHostException; {:try_start_47 .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_54} :catch_5e

    goto :goto_20

    .line 267
    :catch_55
    move-exception v1

    .line 269
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_56
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_5e

    goto :goto_20

    .line 294
    .end local v0           #address:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_5e
    move-exception v2

    .line 296
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_29

    .line 278
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_67
    const/16 v6, 0x75

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_6b
    invoke-static {v6, v7, v8}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29

    .line 280
    :cond_6f
    const/4 v6, 0x1

    if-ne v4, v6, :cond_8f

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extending DM connectivity returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " APN_REQUEST_STARTED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_29

    .line 289
    :cond_8f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extending DM connectivity returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "APN Error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnClose()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_ae} :catch_5e

    .line 291
    const/4 v3, -0x2

    goto/16 :goto_29
.end method

.method public xtpAdpClose(I)V
    .registers 5
    .parameter "appId"

    .prologue
    const/4 v2, 0x0

    .line 1506
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1507
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_11

    .line 1509
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1510
    iput-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1512
    :cond_11
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1c

    .line 1514
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1515
    iput-object v2, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 1518
    :cond_1c
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    if-nez v1, :cond_27

    .line 1551
    :cond_26
    :goto_26
    return-void

    .line 1523
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    if-eqz v1, :cond_30

    .line 1524
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1526
    :cond_30
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    if-eqz v1, :cond_39

    .line 1527
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1529
    :cond_39
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    if-eqz v1, :cond_42

    .line 1530
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1532
    :cond_42
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_4b

    .line 1533
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 1535
    :cond_4b
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_52

    .line 1536
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 1538
    :cond_52
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_59

    .line 1539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_59} :catch_65

    .line 1547
    :cond_59
    :goto_59
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsConnected(Z)V

    .line 1549
    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-eqz v1, :cond_26

    .line 1550
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpApnClose()V

    goto :goto_26

    .line 1542
    :catch_65
    move-exception v0

    .line 1544
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_59
.end method

.method public xtpAdpCloseNetWork(I)V
    .registers 4
    .parameter "appId"

    .prologue
    .line 2020
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 2021
    return-void
.end method

.method public xtpAdpEnsurerouteTohost(Ljava/lang/String;)I
    .registers 7
    .parameter "szURL"

    .prologue
    const/4 v2, -0x1

    .line 165
    const/4 v1, 0x0

    .line 168
    .local v1, nRet:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpLookupHost(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, inetAddr:I
    if-ne v0, v2, :cond_3c

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot establish route for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Unknown host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    move v1, v2

    .line 183
    .end local v1           #nRet:I
    :cond_3b
    :goto_3b
    return v1

    .line 178
    .restart local v1       #nRet:I
    :cond_3c
    sget-object v2, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot establish route to proxy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public xtpAdpGetCurHMACData()Lcom/wssyncmldm/eng/core/XDMHmacData;
    .registers 2

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    return-object v0
.end method

.method public xtpAdpGetHttpEcode(I)I
    .registers 3
    .parameter "appId"

    .prologue
    .line 2025
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->eCode:I

    return v0
.end method

.method public xtpAdpGetHttpOpenMode(I)Ljava/lang/String;
    .registers 3
    .parameter "appId"

    .prologue
    .line 2030
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    return-object v0
.end method

.method public xtpAdpGetIsProxy()Z
    .registers 3

    .prologue
    .line 1976
    sget-boolean v0, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_OTA_PREFER_MODEL:Z

    if-nez v0, :cond_e

    .line 1978
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsProxyServer:Z

    .line 1981
    :cond_e
    iget-boolean v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsProxyServer:Z

    return v0
.end method

.method public xtpAdpHttpMakeSSLTunnelHeader(I)Ljava/lang/String;
    .registers 5
    .parameter "appId"

    .prologue
    .line 944
    const/4 v0, 0x0

    .line 945
    .local v0, szHeader:Ljava/lang/String;
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    const/4 v2, 0x2

    iput v2, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nTunnelConnected:I

    .line 946
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrMakeSslTunnelHeader(II)Ljava/lang/String;

    move-result-object v0

    .line 947
    return-object v0
.end method

.method public xtpAdpHttpPsrChunkSizeParsing(Ljava/io/InputStream;)I
    .registers 16
    .parameter "in"

    .prologue
    const/4 v12, 0x0

    .line 2144
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v3, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2145
    .local v3, data:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 2146
    .local v1, c:I
    const/4 v7, 0x1

    .line 2147
    .local v7, p_num:I
    const/4 v0, 0x0

    .line 2148
    .local v0, ChunkedLen:I
    const/4 v2, 0x0

    .line 2149
    .local v2, ch:C
    const/16 v9, 0x61

    .line 2150
    .local v9, small_A:C
    const/16 v6, 0x41

    .line 2154
    .local v6, large_A:C
    const/4 v11, 0x1

    :try_start_11
    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 2155
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v11

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1d

    move v11, v12

    .line 2202
    :goto_1c
    return v11

    .line 2158
    :cond_1d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 2160
    :goto_20
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_36

    .line 2162
    const/16 v11, 0xd

    if-ne v1, v11, :cond_5b

    .line 2164
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 2165
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_51

    move-result v1

    const/16 v11, 0xa

    if-ne v1, v11, :cond_4d

    .line 2180
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2182
    .local v10, szSize:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 2183
    .local v8, size:[C
    array-length v11, v8

    add-int/lit8 v5, v11, -0x1

    .local v5, j:I
    :goto_41
    if-ltz v5, :cond_86

    .line 2185
    aget-char v11, v8, v5

    invoke-static {v11}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibIsAlphaNum(C)Z

    move-result v11

    if-nez v11, :cond_60

    move v11, v12

    .line 2187
    goto :goto_1c

    .line 2168
    .end local v5           #j:I
    .end local v8           #size:[C
    .end local v10           #szSize:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_20

    .line 2175
    :catch_51
    move-exception v4

    .line 2177
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move v11, v12

    .line 2178
    goto :goto_1c

    .line 2171
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5b
    int-to-char v11, v1

    :try_start_5c
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_51

    goto :goto_20

    .line 2189
    .restart local v5       #j:I
    .restart local v8       #size:[C
    .restart local v10       #szSize:Ljava/lang/String;
    :cond_60
    aget-char v11, v8, v5

    invoke-static {v11}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibIsNum(C)Z

    move-result v11

    if-eqz v11, :cond_73

    .line 2191
    aget-char v11, v8, v5

    add-int/lit8 v11, v11, -0x30

    mul-int/2addr v11, v7

    add-int/2addr v0, v11

    .line 2199
    :goto_6e
    mul-int/lit8 v7, v7, 0x10

    .line 2183
    add-int/lit8 v5, v5, -0x1

    goto :goto_41

    .line 2195
    :cond_73
    aget-char v11, v8, v5

    if-ge v11, v9, :cond_83

    aget-char v11, v8, v5

    add-int/2addr v11, v9

    sub-int/2addr v11, v6

    :goto_7b
    int-to-char v2, v11

    .line 2196
    sub-int v11, v2, v9

    add-int/lit8 v11, v11, 0xa

    mul-int/2addr v11, v7

    add-int/2addr v0, v11

    goto :goto_6e

    .line 2195
    :cond_83
    aget-char v11, v8, v5

    goto :goto_7b

    :cond_86
    move v11, v0

    .line 2202
    goto :goto_1c
.end method

.method public xtpAdpHttpPsrGetContentLengthByRange(Ljava/lang/String;)I
    .registers 14
    .parameter "szContentRange"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 2208
    const/4 v0, 0x0

    .line 2209
    .local v0, contentlength:I
    const/4 v5, 0x0

    .local v5, szHttpRange:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2210
    .local v6, szRetRange:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, pos:I
    const/4 v3, 0x0

    .local v3, len:I
    const/4 v2, 0x0

    .line 2212
    .local v2, index:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bytes "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2213
    if-gez v4, :cond_15

    .line 2254
    :cond_14
    :goto_14
    return v8

    .line 2216
    :cond_15
    add-int/lit8 v9, v4, 0x6

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2217
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eqz v9, :cond_14

    .line 2220
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 2221
    if-eqz v3, :cond_14

    .line 2225
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v3, :cond_37

    .line 2227
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_6c

    .line 2229
    move v2, v1

    .line 2233
    :cond_37
    if-nez v2, :cond_6f

    .line 2235
    move-object v6, v5

    .line 2241
    :goto_3a
    const-string v9, "-"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2242
    .local v7, szTmp:[Ljava/lang/String;
    aget-object v9, v7, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    aget-object v9, v7, v11

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 2244
    aget-object v9, v7, v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v10, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v0, v9, v10

    .line 2245
    if-lez v0, :cond_14

    .line 2249
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    .line 2254
    goto :goto_14

    .line 2225
    .end local v7           #szTmp:[Ljava/lang/String;
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 2239
    :cond_6f
    invoke-virtual {v5, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3a
.end method

.method public xtpAdpHttpPsrMakeSslTunnelHeader(II)Ljava/lang/String;
    .registers 9
    .parameter "conLength"
    .parameter "appId"

    .prologue
    const/4 v3, 0x0

    .line 952
    const-string v4, "xtpAdpHttpPsrMakeSslTunnelHeader"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 953
    const/4 v2, 0x0

    .line 954
    .local v2, szServerURL:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetHttpOpenMode(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, szOpenMode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1061
    :goto_11
    return-object v3

    .line 958
    :cond_12
    iput-object v0, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 960
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    const-string v5, "CONNECT"

    if-ne v4, v5, :cond_1d8

    .line 962
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d1

    .line 964
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 965
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-static {v4}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpParserServerAddrWithPort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 966
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 973
    :goto_46
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 974
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 976
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 978
    :cond_6a
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 980
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 982
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    .local v1, szServerHost:Ljava/lang/String;
    const-string v4, "Host"

    invoke-direct {p0, v1, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .end local v1           #szServerHost:Ljava/lang/String;
    :cond_ac
    :goto_ac
    const-string v4, "no-store, private"

    const-string v5, "Cache-Control"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ca

    .line 1017
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    const-string v5, "Connection"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_ca
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1022
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpUserAgent:Ljava/lang/String;

    const-string v5, "User-Agent"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_e1
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f8

    .line 1027
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    const-string v5, "Accept"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_f8
    const-string v4, "en"

    const-string v5, "Accept-Language"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    const-string v4, "utf-8"

    const-string v5, "Accept-Charset"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11d

    .line 1035
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    const-string v5, "Content-Type"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :cond_11d
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_134

    .line 1040
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    const-string v5, "Cookie"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_134
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_164

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Range"

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_164
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1049
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1050
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1052
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    if-eqz v4, :cond_1ab

    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    array-length v4, v4

    if-eqz v4, :cond_1ab

    .line 1054
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "x-syncml-hmac: "

    invoke-direct {p0, v4, v5}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iput-object v3, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    .line 1057
    :cond_1ab
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\r\n [_____SSL Proxy Make Header_____]\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1061
    iget-object v3, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    goto/16 :goto_11

    .line 970
    :cond_1d1
    const-string v4, "PATH is NULL. Checking the pHttpObj->pRequestUri"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_46

    .line 988
    :cond_1d8
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_264

    .line 990
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 991
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 998
    :goto_1fc
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 999
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_220

    .line 1001
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1003
    :cond_220
    iget-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_szHttpHeaderData:Ljava/lang/String;

    .line 1005
    sget-object v4, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .restart local v1       #szServerHost:Ljava/lang/String;
    const-string v4, "Host"

    invoke-direct {p0, v1, v4}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ac

    .line 995
    .end local v1           #szServerHost:Ljava/lang/String;
    :cond_264
    const-string v4, "PATH is NULL. Checking the pHttpObj->pRequestUri"

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_1fc
.end method

.method public xtpAdpHttpPsrParserHMAC(Ljava/lang/String;I)Lcom/wssyncmldm/eng/core/XDMHmacData;
    .registers 11
    .parameter "szValue"
    .parameter "ConLen"

    .prologue
    .line 2061
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMHmacData;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMHmacData;-><init>()V

    .line 2062
    .local v0, MacData:Lcom/wssyncmldm/eng/core/XDMHmacData;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2064
    const/4 v0, 0x0

    .line 2085
    .end local v0           #MacData:Lcom/wssyncmldm/eng/core/XDMHmacData;
    :goto_c
    return-object v0

    .line 2067
    .restart local v0       #MacData:Lcom/wssyncmldm/eng/core/XDMHmacData;
    :cond_d
    const-string v6, "algorithm="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2068
    .local v1, nStartAlgorithm:I
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2069
    .local v4, szData:Ljava/lang/String;
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 2070
    .local v5, token:I
    const-string v6, "algorithm="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    .line 2071
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "algorithm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2073
    const-string v6, "username=\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2074
    .local v2, nStartUserName:I
    const-string v6, "username=\""

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2075
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2076
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    .line 2077
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "username:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2079
    const-string v6, "mac="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2080
    .local v3, nStartmac:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2081
    const-string v6, "mac="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    .line 2082
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nStartmac:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 2084
    iput p2, v0, Lcom/wssyncmldm/eng/core/XDMHmacData;->httpContentLength:I

    goto/16 :goto_c
.end method

.method public xtpAdpInit(I)I
    .registers 5
    .parameter "appId"

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, ret:I
    const-string v1, "xtpAdpInit"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v1, v1, p1

    if-nez v1, :cond_15

    .line 115
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    new-instance v2, Lcom/wssyncmldm/tp/XTPHttpObj;

    invoke-direct {v2}, Lcom/wssyncmldm/tp/XTPHttpObj;-><init>()V

    aput-object v2, v1, p1

    .line 117
    :cond_15
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetProxyData()Ljava/lang/Object;

    .line 118
    invoke-direct {p0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpInit(I)I

    move-result v0

    .line 119
    if-eqz v0, :cond_25

    .line 121
    const-string v1, "xtpAdpHttpInit Fail!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 122
    const/4 v0, -0x1

    .line 125
    .end local v0           #ret:I
    :goto_24
    return v0

    .line 124
    .restart local v0       #ret:I
    :cond_25
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/agent/fota/XFOTADlAgent;->xfotaDlAgentSetWriteStatus(Z)Z

    goto :goto_24
.end method

.method public xtpAdpMakeSSLTunneling(I)Ljava/lang/String;
    .registers 11
    .parameter "appId"

    .prologue
    .line 924
    const/4 v8, 0x0

    .line 925
    .local v8, szHeader:Ljava/lang/String;
    const-string v2, ""

    .line 926
    .local v2, szHmacData:Ljava/lang/String;
    const-string v3, ""

    .line 930
    .local v3, szContentRange:Ljava/lang/String;
    :try_start_5
    sget-object v0, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerURL:Ljava/lang/String;

    const-string v4, "CONNECT"

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_13} :catch_19

    .line 937
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpMakeSSLTunnelHeader(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 939
    :goto_18
    return-object v0

    .line 932
    :catch_19
    move-exception v7

    .line 934
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public xtpAdpOpen(I)I
    .registers 26
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v10, 0x0

    .line 358
    .local v10, nRet:I
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    if-nez v18, :cond_15

    .line 360
    invoke-virtual/range {p0 .. p1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpInit(I)I

    move-result v10

    .line 362
    if-eqz v10, :cond_15

    .line 364
    const-string v18, "xtpAdpInit Fail!!"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 365
    const/16 v18, -0x1

    .line 607
    :goto_14
    return v18

    .line 369
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    if-nez v18, :cond_55

    .line 371
    const-string v18, "power"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 372
    .local v12, pm:Landroid/os/PowerManager;
    if-nez v12, :cond_2f

    .line 374
    const-string v18, "PowerManager is null!!"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 375
    const/16 v18, -0x2

    goto :goto_14

    .line 378
    :cond_2f
    const/16 v18, 0x1

    const-string v19, "wakeLock"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 383
    .end local v12           #pm:Landroid/os/PowerManager;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    move-object/from16 v18, v0

    if-nez v18, :cond_8f

    .line 385
    const-string v18, "wifi"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 386
    .local v17, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v17, :cond_6f

    .line 388
    const-string v18, "WifiManager is null!!"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 389
    const/16 v18, -0x2

    goto :goto_14

    .line 391
    :cond_6f
    const-string v18, "wifilock"

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_WifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 397
    .end local v17           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_8f
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetUserCancel()Z

    move-result v18

    if-eqz v18, :cond_99

    .line 398
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 400
    :cond_99
    new-instance v18, Lcom/wssyncmldm/tp/XTPNetConnectTimer;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;-><init>(I)V

    .line 402
    const/4 v13, 0x0

    .line 404
    .local v13, socketAddress:Ljava/net/SocketAddress;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v11

    .line 405
    .local v11, nStatus:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetWifiOnlyFlag()Z

    move-result v6

    .line 406
    .local v6, bWifiOnly:Z
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v7

    .line 408
    .local v7, bWificonnected:Z
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v18

    if-nez v18, :cond_c1

    .line 410
    const-string v18, "Roaming, WIFI Disconnected"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 412
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 415
    :cond_c1
    sget-boolean v18, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v18, :cond_c9

    sget-boolean v18, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v18, :cond_d7

    :cond_c9
    if-nez v7, :cond_d7

    .line 417
    const-string v18, "WIFI_ONLY_MODEL, WIFI Disconnected"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 419
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 421
    :cond_d7
    if-eqz v6, :cond_f3

    if-nez v7, :cond_f3

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v11, v0, :cond_e7

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ne v11, v0, :cond_f3

    .line 423
    :cond_e7
    const-string v18, "WIFI_FEATURE or bWifiOnly, WIFI Disconnected - Can not go to DL Session"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 425
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 427
    :cond_f3
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v18

    if-eqz v18, :cond_111

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v11, v0, :cond_105

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ne v11, v0, :cond_111

    .line 429
    :cond_105
    const-string v18, "Delta over size - Can not go to DL Session"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 431
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 434
    :cond_111
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1dc

    .line 438
    :try_start_123
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v18

    if-eqz v18, :cond_1ae

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_conProxy:Ljava/net/Proxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v13

    .line 441
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "conProxy is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_conProxy:Ljava/net/Proxy;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 448
    :goto_153
    new-instance v18, Ljava/net/Socket;

    invoke-direct/range {v18 .. v18}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const v19, 0xea60

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 451
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x1000

    invoke-direct/range {v18 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    .line 452
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    const/16 v20, 0x400

    invoke-direct/range {v18 .. v20}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_19c} :catch_1cd

    .line 578
    :goto_19c
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpCheckRoamingDataConnect()Z

    move-result v18

    if-nez v18, :cond_3e2

    .line 580
    const-string v18, "Roaming, WIFI Disconnected"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 581
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 582
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 445
    :cond_1ae
    :try_start_1ae
    new-instance v14, Ljava/net/InetSocketAddress;

    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1cb} :catch_1cd

    .end local v13           #socketAddress:Ljava/net/SocketAddress;
    .local v14, socketAddress:Ljava/net/SocketAddress;
    move-object v13, v14

    .end local v14           #socketAddress:Ljava/net/SocketAddress;
    .restart local v13       #socketAddress:Ljava/net/SocketAddress;
    goto :goto_153

    .line 454
    :catch_1cd
    move-exception v8

    .line 456
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 458
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 461
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1dc
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3db

    .line 463
    const/4 v15, 0x0

    .local v15, szSSLHost:Ljava/lang/String;
    const/4 v3, 0x0

    .line 464
    .local v3, SSLPXHost:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, SSLPort:I
    const/4 v4, 0x0

    .line 467
    .local v4, SSLPXPort:I
    :try_start_1f2
    const-string v18, "TLS"

    invoke-static/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v18, v0

    if-eqz v18, :cond_24f

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter$XTPTrustManager;-><init>(Lcom/wssyncmldm/tp/XTPAdapter;Ljava/security/KeyStore;)V

    aput-object v22, v20, v21

    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual/range {v18 .. v21}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v18

    const v19, 0xea60

    invoke-interface/range {v18 .. v19}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLContext:Ljavax/net/ssl/SSLContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_24f} :catch_2b2

    .line 483
    :cond_24f
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v18

    if-eqz v18, :cond_36e

    .line 485
    new-instance v18, Ljava/net/Socket;

    invoke-direct/range {v18 .. v18}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    .line 486
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szProxyAddr:Ljava/lang/String;

    .line 487
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->proxyPort:I

    .line 489
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 490
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    .line 492
    new-instance v16, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 495
    .local v16, tunnelAddr:Ljava/net/InetSocketAddress;
    :try_start_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    const v19, 0xea60

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpTunnelHandshake(Ljava/net/Socket;I)I

    move-result v10

    .line 498
    if-eqz v10, :cond_2bf

    .line 500
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V
    :try_end_2ae
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_2ae} :catch_345

    .line 501
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 476
    .end local v16           #tunnelAddr:Ljava/net/InetSocketAddress;
    :catch_2b2
    move-exception v8

    .line 478
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v18, "HttpsConnection: failed to initialize the socket factory"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 480
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 505
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v16       #tunnelAddr:Ljava/net/InetSocketAddress;
    :cond_2bf
    :try_start_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v5, v2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    const v19, 0xea60

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    new-instance v19, Lcom/wssyncmldm/tp/XTPAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPAdapter$1;-><init>(Lcom/wssyncmldm/tp/XTPAdapter;)V

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2bf .. :try_end_306} :catch_345

    .line 562
    .end local v16           #tunnelAddr:Ljava/net/InetSocketAddress;
    :goto_306
    :try_start_306
    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    const/16 v20, 0x1000

    invoke-direct/range {v18 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    .line 563
    new-instance v18, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    const/16 v20, 0x400

    invoke-direct/range {v18 .. v20}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_334} :catch_336

    goto/16 :goto_19c

    .line 565
    :catch_336
    move-exception v8

    .line 567
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 569
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 516
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v16       #tunnelAddr:Ljava/net/InetSocketAddress;
    :catch_345
    move-exception v8

    .line 518
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 521
    :try_start_34d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    if-eqz v18, :cond_35e

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_35e
    .catch Ljava/io/IOException; {:try_start_34d .. :try_end_35e} :catch_365

    .line 528
    :cond_35e
    :goto_35e
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 529
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 524
    :catch_365
    move-exception v9

    .line 526
    .local v9, e1:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_35e

    .line 534
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Ljava/io/IOException;
    .end local v16           #tunnelAddr:Ljava/net/InetSocketAddress;
    :cond_36e
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szServerAddr:Ljava/lang/String;

    .line 535
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget v5, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nServerPort:I

    .line 538
    :try_start_37e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v18

    check-cast v18, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    new-instance v19, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const v20, 0xea60

    invoke-virtual/range {v18 .. v20}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    const v19, 0xea60

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    new-instance v19, Lcom/wssyncmldm/tp/XTPAdapter$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPAdapter$2;-><init>(Lcom/wssyncmldm/tp/XTPAdapter;)V

    invoke-virtual/range {v18 .. v19}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_3ca
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_3ca} :catch_3cc

    goto/16 :goto_306

    .line 552
    :catch_3cc
    move-exception v8

    .line 554
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 556
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 574
    .end local v3           #SSLPXHost:Ljava/lang/String;
    .end local v4           #SSLPXPort:I
    .end local v5           #SSLPort:I
    .end local v8           #e:Ljava/lang/Exception;
    .end local v15           #szSSLHost:Ljava/lang/String;
    :cond_3db
    const-string v18, "Other ProtocolType"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_19c

    .line 585
    :cond_3e2
    sget-boolean v18, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v18, :cond_3ea

    sget-boolean v18, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_BLOCK_3G_MODEL:Z

    if-eqz v18, :cond_3f8

    :cond_3ea
    if-nez v7, :cond_3f8

    .line 587
    const-string v18, "WIFI_ONLY_MODEL, WIFI Disconnected"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 589
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 591
    :cond_3f8
    if-eqz v6, :cond_414

    if-nez v7, :cond_414

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v11, v0, :cond_408

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ne v11, v0, :cond_414

    .line 594
    :cond_408
    const-string v18, "WIFI_FEATURE or bWifiOnly, WIFI Disconnected - Can not go to DL Session"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 596
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 598
    :cond_414
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmWifiDownloadSizeCheck()Z

    move-result v18

    if-eqz v18, :cond_432

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v11, v0, :cond_426

    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ne v11, v0, :cond_432

    .line 600
    :cond_426
    const-string v18, "Delta over size - Can not go to DL Session"

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 602
    const/16 v18, -0x2

    goto/16 :goto_14

    .line 605
    :cond_432
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnEndTimer()V

    .line 606
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpSetIsConnected(Z)V

    .line 607
    const/16 v18, 0x0

    goto/16 :goto_14
.end method

.method public xtpAdpReceiveData(Ljava/io/ByteArrayOutputStream;I)I
    .registers 24
    .parameter "pData"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 1066
    const/4 v15, 0x0

    .line 1067
    .local v15, nRet:I
    const/4 v14, 0x0

    .line 1068
    .local v14, nFumoStatus:I
    const/4 v8, 0x0

    .line 1069
    .local v8, actualBuff:[B
    const/4 v10, 0x0

    .line 1070
    .local v10, chunkedlen:I
    const/4 v5, 0x0

    .line 1071
    .local v5, aBuff:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    .line 1073
    .local v12, in:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1074
    .local v9, bytesread:I
    const/4 v4, 0x0

    .line 1075
    .local v4, ContentBytesread:I
    const/4 v7, 0x0

    .line 1077
    .local v7, actual:I
    const-string v17, ""

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1079
    if-nez v12, :cond_16

    .line 1081
    const/16 v17, -0x2

    .line 1494
    :goto_15
    return v17

    .line 1084
    :cond_16
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_60

    .line 1088
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    move-object/from16 v17, v0

    const v18, 0xea60

    invoke-virtual/range {v17 .. v18}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 1089
    new-instance v17, Lcom/wssyncmldm/tp/XTPNetRecvTimer;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;-><init>(I)V
    :try_end_3d
    .catch Ljava/net/SocketException; {:try_start_28 .. :try_end_3d} :catch_4d

    .line 1117
    :goto_3d
    :try_start_3d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpHeaderParser(ILjava/io/InputStream;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_89

    move-result v15

    .line 1125
    :goto_45
    if-eqz v15, :cond_93

    .line 1127
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1128
    const/16 v17, -0x4

    goto :goto_15

    .line 1091
    :catch_4d
    move-exception v11

    .line 1093
    .local v11, e:Ljava/net/SocketException;
    invoke-virtual {v11}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1094
    const-string v17, "Time out"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1096
    const/16 v17, -0x4

    goto :goto_15

    .line 1103
    .end local v11           #e:Ljava/net/SocketException;
    :cond_60
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    move-object/from16 v17, v0

    const v18, 0xea60

    invoke-virtual/range {v17 .. v18}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 1104
    new-instance v17, Lcom/wssyncmldm/tp/XTPNetRecvTimer;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;-><init>(I)V
    :try_end_75
    .catch Ljava/net/SocketException; {:try_start_60 .. :try_end_75} :catch_76

    goto :goto_3d

    .line 1106
    :catch_76
    move-exception v11

    .line 1108
    .restart local v11       #e:Ljava/net/SocketException;
    invoke-virtual {v11}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1109
    const-string v17, "Time out"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1110
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1111
    const/16 v17, -0x4

    goto :goto_15

    .line 1119
    .end local v11           #e:Ljava/net/SocketException;
    :catch_89
    move-exception v11

    .line 1121
    .local v11, e:Ljava/lang/Exception;
    const/4 v15, -0x4

    .line 1122
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_45

    .line 1131
    .end local v11           #e:Ljava/lang/Exception;
    :cond_93
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b7

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpReturnStatusValue:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_be

    .line 1133
    :cond_b7
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1134
    const/16 v17, -0x6

    goto/16 :goto_15

    .line 1138
    :cond_be
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    if-nez v17, :cond_255

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_255

    .line 1140
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10d

    .line 1142
    const-string v17, "Content-length 0, Content-Range Use"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1143
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrGetContentLengthByRange(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    .line 1151
    :cond_10d
    :goto_10d
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    if-eqz v17, :cond_137

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_137

    .line 1153
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    .line 1156
    :cond_137
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    if-lez v17, :cond_285

    .line 1157
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    .line 1161
    :goto_153
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v14

    .line 1162
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-ne v14, v0, :cond_181

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    move-object/from16 v17, v0

    if-nez v17, :cond_170

    .line 1165
    new-instance v17, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    invoke-direct/range {v17 .. v17}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    .line 1167
    :cond_170
    const/16 v17, 0xcb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1170
    :cond_181
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nTransferCoding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_56c

    .line 1172
    const-string v17, "SYNCMLDM CHUNKED"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1173
    if-nez p2, :cond_3a3

    .line 1175
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x1400

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    .line 1178
    :goto_1ac
    :try_start_1ac
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrChunkSizeParsing(Ljava/io/InputStream;)I

    move-result v10

    if-lez v10, :cond_2d8

    .line 1180
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chunkedlen:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1181
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    new-array v0, v10, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1da} :catch_298

    move-object v6, v5

    .line 1182
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .local v6, aBuff:Ljava/io/ByteArrayInputStream;
    :cond_1db
    :goto_1db
    if-eq v10, v4, :cond_2cf

    .line 1184
    :try_start_1dd
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B

    move-object/from16 v17, v0

    sub-int v18, v10, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_1db

    .line 1186
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ContentBytesread:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , actual :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1187
    new-array v8, v7, [B

    .line 1188
    new-instance v5, Ljava/io/ByteArrayInputStream;

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_22a
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_22a} :catch_77f

    .line 1192
    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    :try_start_22a
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_22d
    .catchall {:try_start_22a .. :try_end_22d} :catchall_2bf
    .catch Ljava/io/IOException; {:try_start_22a .. :try_end_22d} :catch_2a7

    move-result v13

    .line 1193
    .local v13, nByteSize:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_234

    .line 1206
    :cond_234
    if-eqz v5, :cond_239

    .line 1207
    :try_start_236
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_239
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_239} :catch_28f

    .line 1214
    .end local v13           #nByteSize:I
    :cond_239
    :goto_239
    const/16 v17, 0x0

    :try_start_23b
    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_251} :catch_298

    .line 1215
    add-int/2addr v4, v7

    .line 1217
    const/4 v7, -0x1

    move-object v6, v5

    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    goto :goto_1db

    .line 1146
    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_255
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    if-eqz v17, :cond_277

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide/32 v19, 0x7fffffff

    cmp-long v17, v17, v19

    if-nez v17, :cond_10d

    .line 1148
    :cond_277
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nContentLength:I

    goto/16 :goto_10d

    .line 1159
    :cond_285
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    goto/16 :goto_153

    .line 1209
    .restart local v13       #nByteSize:I
    :catch_28f
    move-exception v11

    .line 1211
    .local v11, e:Ljava/io/IOException;
    :try_start_290
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_297
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_297} :catch_298

    goto :goto_239

    .line 1224
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #nByteSize:I
    :catch_298
    move-exception v11

    .line 1226
    .restart local v11       #e:Ljava/io/IOException;
    :goto_299
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1227
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1228
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1198
    .end local v11           #e:Ljava/io/IOException;
    :catch_2a7
    move-exception v11

    .line 1200
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_2a8
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2af
    .catchall {:try_start_2a8 .. :try_end_2af} :catchall_2bf

    .line 1206
    if-eqz v5, :cond_239

    .line 1207
    :try_start_2b1
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2b4
    .catch Ljava/io/IOException; {:try_start_2b1 .. :try_end_2b4} :catch_2b5

    goto :goto_239

    .line 1209
    :catch_2b5
    move-exception v11

    .line 1211
    :try_start_2b6
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2bd
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2bd} :catch_298

    goto/16 :goto_239

    .line 1204
    .end local v11           #e:Ljava/io/IOException;
    :catchall_2bf
    move-exception v17

    .line 1206
    if-eqz v5, :cond_2c5

    .line 1207
    :try_start_2c2
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c5
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2c5} :catch_2c6

    .line 1212
    :cond_2c5
    :goto_2c5
    :try_start_2c5
    throw v17

    .line 1209
    :catch_2c6
    move-exception v11

    .line 1211
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2ce
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2ce} :catch_298

    goto :goto_2c5

    .line 1220
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_2cf
    :try_start_2cf
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpChunkedHeadRead(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_2d4} :catch_77f

    .line 1221
    const/4 v10, 0x0

    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1ac

    .line 1231
    :cond_2d8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    .line 1232
    const/4 v4, 0x0

    .line 1233
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CHUNKED pHttpObj[appId].pReceiveBuffer.length = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1234
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CHUNKED nHttpBodyLength = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1236
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-eq v14, v0, :cond_34c

    .line 1238
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    if-lez v17, :cond_3a0

    .line 1240
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1473
    :cond_34c
    :goto_34c
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpWBXMLLog(I[B)V

    .line 1475
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1478
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_728

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "close"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_728

    .line 1480
    const-string v17, "_______HTTP_CONNECTION_TYPE_CLOSE MODE_______"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1481
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    .line 1482
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpClose(I)V

    .line 1494
    :goto_39c
    const/16 v17, 0x0

    goto/16 :goto_15

    .line 1242
    :cond_3a0
    const/16 p1, 0x0

    goto :goto_34c

    .line 1247
    :cond_3a3
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-eq v14, v0, :cond_3c0

    .line 1249
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x1400

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    .line 1250
    const-string v17, "DL MODE BUT NOT DOWNLOAD_IN_PROGRESS"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1255
    :cond_3c0
    :goto_3c0
    :try_start_3c0
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrChunkSizeParsing(Ljava/io/InputStream;)I

    move-result v10

    if-lez v10, :cond_51c

    .line 1257
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "chunkedlen:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1258
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    new-array v0, v10, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B
    :try_end_3ee
    .catch Ljava/io/IOException; {:try_start_3c0 .. :try_end_3ee} :catch_491

    move-object v6, v5

    .line 1259
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_3ef
    :goto_3ef
    if-eq v10, v4, :cond_789

    .line 1261
    :try_start_3f1
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B

    move-object/from16 v17, v0

    sub-int v18, v10, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_3ef

    .line 1263
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ContentBytesread:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , bytesread:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , actual :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1264
    new-array v8, v7, [B

    .line 1265
    new-instance v5, Ljava/io/ByteArrayInputStream;

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pChunkBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_44a
    .catch Ljava/io/IOException; {:try_start_3f1 .. :try_end_44a} :catch_77b

    .line 1269
    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    :try_start_44a
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v16

    .line 1270
    .local v16, ret:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_45b

    .line 1272
    const-string v17, "Buff read fail"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_45b
    .catchall {:try_start_44a .. :try_end_45b} :catchall_4b7
    .catch Ljava/io/IOException; {:try_start_44a .. :try_end_45b} :catch_4a0

    .line 1283
    :cond_45b
    if-eqz v5, :cond_460

    .line 1284
    :try_start_45d
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_460
    .catch Ljava/io/IOException; {:try_start_45d .. :try_end_460} :catch_488

    .line 1292
    .end local v16           #ret:I
    :cond_460
    :goto_460
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-ne v14, v0, :cond_4ee

    .line 1294
    :try_start_466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrWriteFirmwareObject(I[B)I

    move-result v15

    .line 1295
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1296
    new-instance v17, Lcom/wssyncmldm/tp/XTPNetRecvTimer;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;-><init>(I)V

    .line 1298
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_4c7

    .line 1299
    const/16 v17, -0x8

    goto/16 :goto_15

    .line 1286
    .restart local v16       #ret:I
    :catch_488
    move-exception v11

    .line 1288
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_490
    .catch Ljava/io/IOException; {:try_start_466 .. :try_end_490} :catch_491

    goto :goto_460

    .line 1331
    .end local v11           #e:Ljava/io/IOException;
    .end local v16           #ret:I
    :catch_491
    move-exception v11

    .line 1333
    .restart local v11       #e:Ljava/io/IOException;
    :goto_492
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1335
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1275
    .end local v11           #e:Ljava/io/IOException;
    :catch_4a0
    move-exception v11

    .line 1277
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_4a1
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_4a8
    .catchall {:try_start_4a1 .. :try_end_4a8} :catchall_4b7

    .line 1283
    if-eqz v5, :cond_460

    .line 1284
    :try_start_4aa
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4ad
    .catch Ljava/io/IOException; {:try_start_4aa .. :try_end_4ad} :catch_4ae

    goto :goto_460

    .line 1286
    :catch_4ae
    move-exception v11

    .line 1288
    :try_start_4af
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_4b6
    .catch Ljava/io/IOException; {:try_start_4af .. :try_end_4b6} :catch_491

    goto :goto_460

    .line 1281
    .end local v11           #e:Ljava/io/IOException;
    :catchall_4b7
    move-exception v17

    .line 1283
    if-eqz v5, :cond_4bd

    .line 1284
    :try_start_4ba
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4bd
    .catch Ljava/io/IOException; {:try_start_4ba .. :try_end_4bd} :catch_4be

    .line 1289
    :cond_4bd
    :goto_4bd
    :try_start_4bd
    throw v17

    .line 1286
    :catch_4be
    move-exception v11

    .line 1288
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_4bd

    .line 1300
    .end local v11           #e:Ljava/io/IOException;
    :cond_4c7
    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v15, v0, :cond_4d3

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_4d7

    .line 1301
    :cond_4d3
    const/16 v17, -0x9

    goto/16 :goto_15

    .line 1302
    :cond_4d7
    if-eqz v15, :cond_4dd

    .line 1303
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1305
    :cond_4dd
    const/16 v17, 0xd1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1320
    :goto_4e8
    add-int/2addr v4, v7

    .line 1321
    add-int/2addr v9, v7

    .line 1322
    const/4 v7, -0x1

    move-object v6, v5

    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3ef

    .line 1307
    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_4ee
    const/16 v17, 0xe6

    move/from16 v0, v17

    if-ne v14, v0, :cond_4fd

    .line 1325
    :cond_4f4
    :goto_4f4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpChunkedHeadRead(Ljava/io/InputStream;)Ljava/lang/String;

    .line 1326
    const/4 v10, 0x0

    .line 1327
    const/4 v4, 0x0

    goto/16 :goto_3c0

    .line 1311
    :cond_4fd
    const/16 v17, 0x14

    move/from16 v0, v17

    if-eq v14, v0, :cond_4f4

    .line 1317
    const/16 v17, 0x0

    sget-object v18, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v18, v18, p2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v18, v0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_51b
    .catch Ljava/io/IOException; {:try_start_4bd .. :try_end_51b} :catch_491

    goto :goto_4e8

    .line 1338
    :cond_51c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CHUNKED nHttpBodyLength = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1339
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-eq v14, v0, :cond_34c

    .line 1345
    move-object/from16 v0, p0

    iput v9, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    .line 1346
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    if-lez v17, :cond_568

    .line 1348
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_34c

    .line 1350
    :cond_568
    const/16 p1, 0x0

    goto/16 :goto_34c

    .line 1357
    :cond_56c
    const/16 v17, 0x28

    move/from16 v0, v17

    if-eq v14, v0, :cond_786

    const/16 v17, 0x14

    move/from16 v0, v17

    if-eq v14, v0, :cond_786

    const/16 v17, 0xe6

    move/from16 v0, v17

    if-eq v14, v0, :cond_786

    .line 1359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    if-nez v17, :cond_786

    .line 1361
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1362
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1433
    :cond_58d
    const/16 v17, 0xd1

    :try_start_58f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_598
    .catch Ljava/io/IOException; {:try_start_58f .. :try_end_598} :catch_658

    .line 1444
    :cond_598
    if-eqz v8, :cond_59b

    .line 1445
    const/4 v8, 0x0

    .line 1447
    :cond_59b
    add-int/2addr v9, v7

    .line 1448
    add-int/2addr v4, v7

    move-object v6, v5

    .line 1368
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :goto_59e
    :try_start_59e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v4, v0, :cond_783

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_783

    .line 1370
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-ne v14, v0, :cond_68e

    .line 1372
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x1400

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    .line 1373
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 1374
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ContentBytesread:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " , actual :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1375
    new-array v8, v7, [B

    .line 1376
    new-instance v5, Ljava/io/ByteArrayInputStream;

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v5, v0, v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_611
    .catch Ljava/io/IOException; {:try_start_59e .. :try_end_611} :catch_777

    .line 1380
    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    :try_start_611
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v16

    .line 1381
    .restart local v16       #ret:I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_622

    .line 1383
    const-string v17, "Buff read fail"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_622
    .catchall {:try_start_611 .. :try_end_622} :catchall_67e
    .catch Ljava/io/IOException; {:try_start_611 .. :try_end_622} :catch_667

    .line 1394
    :cond_622
    if-eqz v5, :cond_627

    .line 1395
    :try_start_624
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_627
    .catch Ljava/io/IOException; {:try_start_624 .. :try_end_627} :catch_64f

    .line 1420
    .end local v16           #ret:I
    :cond_627
    :goto_627
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-ne v14, v0, :cond_6e7

    .line 1422
    :try_start_62d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_dlhandler:Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Lcom/wssyncmldm/agent/fota/XFOTADlAgentHandler;->xfotaDlAgentHdlrWriteFirmwareObject(I[B)I

    move-result v15

    .line 1423
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1424
    new-instance v17, Lcom/wssyncmldm/tp/XTPNetRecvTimer;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;-><init>(I)V

    .line 1426
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_6d1

    .line 1427
    const/16 v17, -0x8

    goto/16 :goto_15

    .line 1397
    .restart local v16       #ret:I
    :catch_64f
    move-exception v11

    .line 1399
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_657
    .catch Ljava/io/IOException; {:try_start_62d .. :try_end_657} :catch_658

    goto :goto_627

    .line 1452
    .end local v11           #e:Ljava/io/IOException;
    .end local v16           #ret:I
    :catch_658
    move-exception v11

    .line 1454
    .restart local v11       #e:Ljava/io/IOException;
    :goto_659
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 1456
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1386
    .end local v11           #e:Ljava/io/IOException;
    :catch_667
    move-exception v11

    .line 1388
    .restart local v11       #e:Ljava/io/IOException;
    :try_start_668
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_66f
    .catchall {:try_start_668 .. :try_end_66f} :catchall_67e

    .line 1394
    if-eqz v5, :cond_627

    .line 1395
    :try_start_671
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_674
    .catch Ljava/io/IOException; {:try_start_671 .. :try_end_674} :catch_675

    goto :goto_627

    .line 1397
    :catch_675
    move-exception v11

    .line 1399
    :try_start_676
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_67d
    .catch Ljava/io/IOException; {:try_start_676 .. :try_end_67d} :catch_658

    goto :goto_627

    .line 1392
    .end local v11           #e:Ljava/io/IOException;
    :catchall_67e
    move-exception v17

    .line 1394
    if-eqz v5, :cond_684

    .line 1395
    :try_start_681
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_684
    .catch Ljava/io/IOException; {:try_start_681 .. :try_end_684} :catch_685

    .line 1400
    :cond_684
    :goto_684
    :try_start_684
    throw v17

    .line 1397
    :catch_685
    move-exception v11

    .line 1399
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_68d
    .catch Ljava/io/IOException; {:try_start_684 .. :try_end_68d} :catch_658

    goto :goto_684

    .line 1405
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_68e
    :try_start_68e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    if-lez v17, :cond_6ce

    .line 1408
    if-nez v4, :cond_6ae

    .line 1410
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    .line 1412
    :cond_6ae
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v18, v0

    sub-int v18, v18, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_6c7
    .catch Ljava/io/IOException; {:try_start_68e .. :try_end_6c7} :catch_777

    move-result v7

    .line 1413
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_6ce

    :cond_6ce
    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_627

    .line 1428
    :cond_6d1
    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v15, v0, :cond_6dd

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_6e1

    .line 1429
    :cond_6dd
    const/16 v17, -0x9

    goto/16 :goto_15

    .line 1430
    :cond_6e1
    if-eqz v15, :cond_58d

    .line 1431
    const/16 v17, -0x4

    goto/16 :goto_15

    .line 1435
    :cond_6e7
    const/16 v17, 0xe6

    move/from16 v0, v17

    if-ne v14, v0, :cond_71d

    .line 1459
    :goto_6ed
    const/16 v17, 0x1e

    move/from16 v0, v17

    if-eq v14, v0, :cond_34c

    .line 1465
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v17, v0

    if-lez v17, :cond_724

    .line 1467
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->pReceiveBuffer:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_nHttpBodyLength:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_34c

    .line 1439
    :cond_71d
    const/16 v17, 0x14

    move/from16 v0, v17

    if-ne v14, v0, :cond_598

    goto :goto_6ed

    .line 1469
    :cond_724
    const/16 p1, 0x0

    goto/16 :goto_34c

    .line 1484
    :cond_728
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_758

    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "Keep-Alive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_758

    .line 1486
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    goto/16 :goto_39c

    .line 1490
    :cond_758
    const-string v17, "_______HTTP_CONNECTION_TYPE_NONE MODE_______"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1491
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->nHttpConnection:I

    .line 1492
    sget-object v17, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v17, v17, p2

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpConnection:Ljava/lang/String;

    goto/16 :goto_39c

    .line 1452
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :catch_777
    move-exception v11

    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_659

    .line 1331
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :catch_77b
    move-exception v11

    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_492

    .line 1224
    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :catch_77f
    move-exception v11

    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_299

    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    :cond_783
    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_6ed

    :cond_786
    move-object v6, v5

    .end local v5           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v6       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_59e

    :cond_789
    move-object v5, v6

    .end local v6           #aBuff:Ljava/io/ByteArrayInputStream;
    .restart local v5       #aBuff:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_4f4
.end method

.method public xtpAdpSendData([BII)I
    .registers 21
    .parameter "pData"
    .parameter "dataSize"
    .parameter "appId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 784
    const/4 v7, 0x0

    .line 785
    .local v7, nRet:I
    const/4 v12, 0x0

    .line 786
    .local v12, szHttpHeaderData:Ljava/lang/String;
    const/4 v9, 0x0

    .line 787
    .local v9, pSendBuffer:[B
    const/4 v4, 0x0

    .line 789
    .local v4, SendDataLen:I
    const-string v14, ""

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    if-eqz v14, :cond_15

    sget-object v14, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v14, v14, p3

    if-nez v14, :cond_17

    .line 793
    :cond_15
    const/4 v7, -0x2

    .line 919
    .end local v7           #nRet:I
    :goto_16
    return v7

    .line 798
    .restart local v7       #nRet:I
    :cond_17
    :try_start_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    if-eqz v14, :cond_2c

    .line 800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/io/InputStream;->mark(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Input:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->reset()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2c} :catch_65

    .line 811
    :cond_2c
    if-eqz p1, :cond_72

    .line 813
    move-object/from16 v9, p1

    .line 814
    array-length v4, v9

    .line 821
    :goto_31
    sget-object v14, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v14, v14, p3

    iget v14, v14, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_81

    .line 825
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Socket:Ljava/net/Socket;

    const v15, 0xea60

    invoke-virtual {v14, v15}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 826
    new-instance v14, Lcom/wssyncmldm/tp/XTPNetSendTimer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/wssyncmldm/tp/XTPNetSendTimer;-><init>(I)V
    :try_end_4b
    .catch Ljava/net/SocketException; {:try_start_3a .. :try_end_4b} :catch_74

    .line 834
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrMakeHeader(II)Ljava/lang/String;

    move-result-object v12

    .line 835
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e6

    .line 837
    const-string v14, "pHttpHeaderData is null"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 838
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 839
    const/4 v7, -0x3

    goto :goto_16

    .line 804
    :catch_65
    move-exception v5

    .line 806
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 808
    const/4 v7, -0x3

    goto :goto_16

    .line 818
    .end local v5           #e:Ljava/io/IOException;
    :cond_72
    const/4 v4, 0x0

    goto :goto_31

    .line 828
    :catch_74
    move-exception v5

    .line 830
    .local v5, e:Ljava/net/SocketException;
    invoke-virtual {v5}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 832
    const/4 v7, -0x3

    goto :goto_16

    .line 842
    .end local v5           #e:Ljava/net/SocketException;
    :cond_81
    sget-object v14, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v14, v14, p3

    iget v14, v14, Lcom/wssyncmldm/tp/XTPHttpObj;->protocol:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_db

    .line 846
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_SSLSocket:Ljavax/net/ssl/SSLSocket;

    const v15, 0xea60

    invoke-virtual {v14, v15}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 847
    new-instance v14, Lcom/wssyncmldm/tp/XTPNetSendTimer;

    move/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/wssyncmldm/tp/XTPNetSendTimer;-><init>(I)V
    :try_end_9b
    .catch Ljava/net/SocketException; {:try_start_8a .. :try_end_9b} :catch_b7

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v14

    if-eqz v14, :cond_c5

    .line 857
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrMakeSslTunnelHeader(II)Ljava/lang/String;

    move-result-object v12

    .line 858
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e6

    .line 860
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 861
    const/4 v7, -0x3

    goto/16 :goto_16

    .line 849
    :catch_b7
    move-exception v5

    .line 851
    .restart local v5       #e:Ljava/net/SocketException;
    invoke-virtual {v5}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 853
    const/4 v7, -0x3

    goto/16 :goto_16

    .line 866
    .end local v5           #e:Ljava/net/SocketException;
    :cond_c5
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpHttpPsrMakeHeader(II)Ljava/lang/String;

    move-result-object v12

    .line 867
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e6

    .line 869
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 870
    const/4 v7, -0x3

    goto/16 :goto_16

    .line 876
    :cond_db
    const-string v14, "Other ProtocolType"

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 878
    const/4 v7, -0x6

    goto/16 :goto_16

    .line 881
    :cond_e6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v9}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpWBXMLLog(I[B)V

    .line 883
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 884
    .local v6, headbyte:[B
    array-length v14, v6

    add-int/2addr v14, v4

    new-array v3, v14, [B

    .line 886
    .local v3, SendBuf:[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    if-eqz v4, :cond_10c

    if-eqz v9, :cond_10c

    .line 888
    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v15, v15

    invoke-static {v9, v14, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    :cond_10c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/wssyncmldm/tp/XTPAdapter;->m_Output:Ljava/io/OutputStream;

    .line 891
    .local v8, out:Ljava/io/OutputStream;
    const/4 v10, 0x0

    .line 892
    .local v10, position:I
    array-length v13, v3

    .line 895
    .local v13, totalLength:I
    :goto_112
    if-eq v10, v13, :cond_132

    .line 897
    sub-int v14, v13, v10

    const/16 v15, 0x100

    if-le v14, v15, :cond_121

    const/16 v11, 0x100

    .line 900
    .local v11, sendLength:I
    :goto_11c
    :try_start_11c
    invoke-virtual {v8, v3, v10, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_124

    .line 908
    add-int/2addr v10, v11

    .line 909
    goto :goto_112

    .line 897
    .end local v11           #sendLength:I
    :cond_121
    sub-int v11, v13, v10

    goto :goto_11c

    .line 902
    .restart local v11       #sendLength:I
    :catch_124
    move-exception v5

    .line 904
    .local v5, e:Ljava/io/IOException;
    :try_start_125
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 906
    const/4 v7, -0x3

    goto/16 :goto_16

    .line 910
    .end local v5           #e:Ljava/io/IOException;
    .end local v11           #sendLength:I
    :cond_132
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_135} :catch_13a

    .line 918
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    goto/16 :goto_16

    .line 912
    :catch_13a
    move-exception v5

    .line 914
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V

    .line 916
    const/4 v7, -0x3

    goto/16 :goto_16
.end method

.method public xtpAdpSetCurHMACData(Lcom/wssyncmldm/eng/core/XDMHmacData;)I
    .registers 4
    .parameter "MacData"

    .prologue
    .line 2095
    const/4 v0, 0x0

    .line 2097
    .local v0, nRet:I
    iget-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    if-nez v1, :cond_c

    .line 2098
    new-instance v1, Lcom/wssyncmldm/eng/core/XDMHmacData;

    invoke-direct {v1}, Lcom/wssyncmldm/eng/core/XDMHmacData;-><init>()V

    iput-object v1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 2100
    :cond_c
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_HMacData:Lcom/wssyncmldm/eng/core/XDMHmacData;

    .line 2102
    return v0
.end method

.method public xtpAdpSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 18
    .parameter "szRequest"
    .parameter "szHmacData"
    .parameter "szContentRange"
    .parameter "szHttpOpenMode"
    .parameter "appId"
    .parameter "nDownloadMode"

    .prologue
    .line 1691
    const/4 v6, 0x0

    .line 1692
    .local v6, ret:I
    const/4 v5, 0x0

    .line 1694
    .local v5, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    if-nez v9, :cond_8

    .line 1695
    const/4 v6, -0x1

    .line 1791
    .end local v6           #ret:I
    :cond_7
    :goto_7
    return v6

    .line 1697
    .restart local v6       #ret:I
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_bd

    .line 1699
    if-nez p5, :cond_95

    .line 1701
    const/4 v4, 0x0

    .local v4, nSrcType:I
    const/4 v2, 0x0

    .line 1702
    .local v2, nDstType:I
    const/4 v3, 0x0

    .line 1704
    .local v3, nPortOrg:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "respUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1705
    invoke-static {p1}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v5

    .line 1706
    invoke-static/range {p5 .. p5}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetConnectType(I)I

    move-result v4

    .line 1707
    iget-object v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-static {v9}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpExchangeProtocolType(Ljava/lang/String;)I

    move-result v2

    .line 1708
    invoke-static/range {p5 .. p5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerAddress(I)Ljava/lang/String;

    move-result-object v7

    .line 1709
    .local v7, szAddressOrg:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetServerPort(I)I

    move-result v3

    .line 1712
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 1714
    const-string v9, "AddressOrg is null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1715
    const/4 v6, -0x1

    goto :goto_7

    .line 1718
    :cond_4c
    if-ne v4, v2, :cond_5a

    iget-object v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5a

    iget v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    if-eq v3, v9, :cond_85

    .line 1720
    :cond_5a
    const-string v8, ""

    .line 1721
    .local v8, szURL:Ljava/lang/String;
    const/16 v9, 0x3f

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1722
    .local v1, firstQuestion:I
    if-lez v1, :cond_83

    .line 1723
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1726
    :goto_69
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_72

    .line 1728
    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerUrl(Ljava/lang/String;)V

    .line 1731
    :cond_72
    iget-object v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerAddress(Ljava/lang/String;)V

    .line 1732
    iget v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerPort(I)V

    .line 1733
    iget-object v9, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    invoke-static {v9}, Lcom/wssyncmldm/db/file/XDB;->xdbSetServerProtocol(Ljava/lang/String;)V

    .line 1734
    const/4 v6, 0x7

    goto :goto_7

    .line 1725
    :cond_83
    move-object v8, p1

    goto :goto_69

    .line 1737
    .end local v1           #firstQuestion:I
    .end local v8           #szURL:Ljava/lang/String;
    :cond_85
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_95

    .line 1739
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    sget-object v10, Lcom/wssyncmldm/tp/XTPAdapter;->m_szCookie:Ljava/lang/String;

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpcookie:Ljava/lang/String;

    .line 1743
    .end local v2           #nDstType:I
    .end local v3           #nPortOrg:I
    .end local v4           #nSrcType:I
    .end local v7           #szAddressOrg:Ljava/lang/String;
    :cond_95
    invoke-virtual {p0}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsProxy()Z

    move-result v9

    if-eqz v9, :cond_154

    .line 1744
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iput-object p1, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    .line 1748
    :goto_a1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestURI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v10, v10, p5

    iget-object v10, v10, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 1751
    :cond_bd
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_160

    .line 1753
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iget-object v9, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    if-nez v9, :cond_d7

    .line 1755
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    .line 1757
    :cond_d7
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    .line 1762
    :goto_e1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_169

    .line 1763
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iput-object p4, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    .line 1767
    :goto_ed
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_172

    .line 1768
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iput-object p3, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    .line 1772
    :goto_f9
    if-eqz p6, :cond_17a

    .line 1773
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    move/from16 v0, p6

    iput-boolean v0, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->nDownloadMode:Z

    .line 1777
    :goto_103
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_7

    .line 1779
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 1780
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    .line 1782
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetMimeType()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 1783
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetAcceptType()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    .line 1785
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iget-object v9, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_13e

    .line 1786
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const-string v10, "application/vnd.oma.dd+xml"

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpMimeType:Ljava/lang/String;

    .line 1788
    :cond_13e
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    iget-object v9, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1789
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const-string v10, "application/vnd.oma.dd+xml"

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpAccept:Ljava/lang/String;

    goto/16 :goto_7

    .line 1746
    :cond_154
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    invoke-static {p1}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpParsePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szRequestUri:Ljava/lang/String;

    goto/16 :goto_a1

    .line 1760
    :cond_160
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->pHmacData:[B

    goto/16 :goto_e1

    .line 1765
    :cond_169
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szHttpOpenMode:Ljava/lang/String;

    goto/16 :goto_ed

    .line 1770
    :cond_172
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->m_szContentRange:Ljava/lang/String;

    goto :goto_f9

    .line 1775
    :cond_17a
    sget-object v9, Lcom/wssyncmldm/tp/XTPAdapter;->g_HttpObj:[Lcom/wssyncmldm/tp/XTPHttpObj;

    aget-object v9, v9, p5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/wssyncmldm/tp/XTPHttpObj;->nDownloadMode:Z

    goto :goto_103
.end method

.method public xtpAdpSetIsProxy(Z)V
    .registers 2
    .parameter "isProxy"

    .prologue
    .line 1986
    iput-boolean p1, p0, Lcom/wssyncmldm/tp/XTPAdapter;->m_bIsProxyServer:Z

    .line 1987
    return-void
.end method

.method public xtpAdpbeginConnectivity()I
    .registers 5

    .prologue
    .line 188
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcom/wssyncmldm/tp/XTPAdapter;->g_ConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enabledevicemanagement"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 196
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xtpServicebeginConnectivity result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 197
    packed-switch v0, :pswitch_data_2e

    .line 208
    const-string v1, "Cannot establish DM connectivity"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    :pswitch_2c
    return v0

    .line 197
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method
