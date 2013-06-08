.class public Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
.super Ljava/lang/Object;
.source "XDMAppProtoNetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMDNSAddr;,
        Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;
    }
.end annotation


# static fields
.field private static final APN_CONTENT_URI:Landroid/net/Uri; = null

.field private static final APN_PROJECTION:[Ljava/lang/String; = null

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI2:Landroid/net/Uri; = null

.field public static final PROTO_ADDRESS_APN:I = 0x0

.field public static final PROTO_ADDRESS_E164:I = 0x1

.field public static final PROTO_ADDRESS_IPV4:I = 0x2

.field private static context:Landroid/content/Context;

.field public static existApn:Z

.field private static final searchProjection:[Ljava/lang/String;

.field private static selectedAPNID:I


# instance fields
.field public apntype:Ljava/lang/String;

.field public auth:Ljava/lang/String;

.field public authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

.field public dnsAddr:[Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMDNSAddr;

.field public inactiveDataTime:I

.field public m_nMmspxport:I

.field public m_szHomeURL:Ljava/lang/String;

.field public m_szMmsc:Ljava/lang/String;

.field public m_szMmsname:Ljava/lang/String;

.field public m_szMmsproxy:Ljava/lang/String;

.field public m_szProxyAddr:Ljava/lang/String;

.field public napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

.field public napAddrType:I

.field public nbaType:I

.field public opMode:I

.field public protoAppType:I

.field public protoType:I

.field public szAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    const-string v1, "proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "apn"

    aput-object v1, v0, v5

    sput-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->searchProjection:[Ljava/lang/String;

    .line 38
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->PREFERAPN_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://telephony/carriers/preferapn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->PREFERAPN_URI2:Landroid/net/Uri;

    .line 48
    sput v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 73
    sput-boolean v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->existApn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "pcontext"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    if-nez v0, :cond_9

    .line 100
    sput-object p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    .line 101
    :cond_9
    return-void
.end method

.method public static xdmAgentAppGetExistApn()Z
    .registers 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->existApn:Z

    return v0
.end method

.method private xdmAgentAppSaveNetInfo(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V
    .registers 12
    .parameter "netInfo"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v9, 0x1

    .line 419
    sget v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, szParamIndex:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 423
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v9

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1f
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-eqz v5, :cond_cf

    .line 427
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v5, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 428
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v6, v6, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_39
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v5, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 432
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v5, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    const-string v6, "0.0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 434
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :goto_58
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget v5, v5, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    if-nez v5, :cond_bf

    .line 442
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v8

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_67
    :goto_67
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    if-eqz v5, :cond_d5

    .line 457
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v5, v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    .line 458
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v6, v6, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_81
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v5, v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 460
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v6, v6, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_97
    :goto_97
    iget-object v5, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_db

    .line 468
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_aa
    invoke-virtual {v4}, Landroid/content/ContentValues;->hashCode()I

    move-result v5

    if-nez v5, :cond_e1

    .line 476
    sput v9, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 513
    :goto_b2
    return-void

    .line 438
    :cond_b3
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v6, v6, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 446
    :cond_bf
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget v6, v6, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_67

    .line 452
    :cond_cf
    const-string v5, "netInfo.napAddr is Null"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_67

    .line 464
    :cond_d5
    const-string v5, "netInfo.authInfo is Null"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_97

    .line 471
    :cond_db
    const-string v5, "netInfo.apntype is Null"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_aa

    .line 482
    :cond_e1
    :try_start_e1
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 483
    .local v1, netInfoUri:Landroid/net/Uri;
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 484
    .local v2, ret:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accounts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 501
    sget-object v5, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 504
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accounts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_141} :catch_145

    .line 512
    .end local v1           #netInfoUri:Landroid/net/Uri;
    .end local v2           #ret:I
    :goto_141
    sput v9, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    goto/16 :goto_b2

    .line 506
    :catch_145
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Can\'t update DB"

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_141
.end method

.method public static xdmAgentAppSetExistApn(Z)V
    .registers 1
    .parameter "bexist"

    .prologue
    .line 110
    sput-boolean p0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->existApn:Z

    .line 111
    return-void
.end method


# virtual methods
.method public xdmAgentAppGetBootStrapNetInfo()V
    .registers 12

    .prologue
    .line 119
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 121
    const/4 v7, 0x0

    .line 122
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 123
    .local v8, cursor1:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 137
    .local v6, _cNetInfo:Landroid/database/Cursor;
    :try_start_8
    sget-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->PREFERAPN_URI:Landroid/net/Uri;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->searchProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    if-eqz v7, :cond_e6

    .line 142
    const/4 v10, 0x1

    .line 144
    .local v10, pos:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 147
    const-string v0, "there is no enabled apn in PREFERAPN_URI!!!!!!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "current =\'1\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    if-eqz v8, :cond_6d

    .line 151
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6a

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 155
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 156
    sput v10, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there is no enabled apn in PREFERAPN_URI selectedAPNID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 164
    :cond_6a
    :goto_6a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_6d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_f6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_86

    .line 197
    if-eqz v7, :cond_75

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_75
    if-eqz v8, :cond_7a

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_7a
    if-eqz v6, :cond_7f

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    .end local v10           #pos:I
    :cond_7f
    :goto_7f
    return-void

    .line 161
    .restart local v10       #pos:I
    :cond_80
    :try_start_80
    const-string v0, "there is no enabled apn!!!!!!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_f6
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_86

    goto :goto_6a

    .line 191
    .end local v10           #pos:I
    :catch_86
    move-exception v9

    .line 193
    .local v9, e:Ljava/lang/Exception;
    :try_start_87
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_f6

    .line 197
    if-eqz v7, :cond_93

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_93
    if-eqz v8, :cond_98

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_98
    if-eqz v6, :cond_7f

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7f

    .line 171
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #pos:I
    :cond_9e
    :try_start_9e
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 174
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    sget-object v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    if-eqz v6, :cond_e6

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e3

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 184
    sput v10, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 187
    :cond_e3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_e6
    .catchall {:try_start_9e .. :try_end_e6} :catchall_f6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_e6} :catch_86

    .line 197
    .end local v10           #pos:I
    :cond_e6
    if-eqz v7, :cond_eb

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_eb
    if-eqz v8, :cond_f0

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_f0
    if-eqz v6, :cond_7f

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7f

    .line 197
    :catchall_f6
    move-exception v0

    if-eqz v7, :cond_fc

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_fc
    if-eqz v8, :cond_101

    .line 201
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_101
    if-eqz v6, :cond_106

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_106
    throw v0
.end method

.method public xdmAgentAppGetNetInfo(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V
    .registers 18
    .parameter "netInfo"

    .prologue
    .line 211
    const/4 v7, 0x0

    .line 214
    .local v7, _cNetInfo:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 215
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 229
    .local v9, cursor1:Landroid/database/Cursor;
    :try_start_3
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->PREFERAPN_URI:Landroid/net/Uri;

    sget-object v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->searchProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 232
    if-eqz v8, :cond_30a

    .line 234
    const/4 v11, 0x1

    .line 235
    .local v11, pos:I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppSetExistApn(Z)V

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2fe

    .line 240
    const-string v1, "there is no enabled apn in PREFERAPN_URI!!!!!!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 241
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "current =\'1\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 242
    if-eqz v9, :cond_17b

    .line 244
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2db

    .line 246
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_17b

    .line 248
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 249
    sput v11, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no enabled apn in PREFERAPN_URI selectedAPNID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 254
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 255
    .local v12, szTmpAPN:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 257
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v1, :cond_9c

    .line 259
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 261
    :cond_9c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iput-object v12, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    .line 265
    :cond_a2
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, szTmpProxyAddr:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 268
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v1, :cond_c4

    .line 270
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 273
    :cond_c4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-static {v13}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpCheckValidIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy addr is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v2, v2, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 277
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 278
    .local v15, tmpProxyPort:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    const/4 v2, 0x0

    iput v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 279
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 281
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy port is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget v2, v2, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 287
    .end local v15           #tmpProxyPort:Ljava/lang/String;
    :cond_12e
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, szTmpUsername:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_169

    .line 290
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    if-nez v1, :cond_150

    .line 292
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    .line 294
    :cond_150
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iput-object v14, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    .line 297
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    .line 300
    :cond_169
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    .line 313
    .end local v12           #szTmpAPN:Ljava/lang/String;
    .end local v13           #szTmpProxyAddr:Ljava/lang/String;
    .end local v14           #szTmpUsername:Ljava/lang/String;
    :cond_17b
    :goto_17b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 315
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 317
    if-eqz v7, :cond_2cb

    .line 319
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2cb

    .line 321
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 323
    sput v11, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->selectedAPNID:I

    .line 324
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    .restart local v12       #szTmpAPN:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1ef

    .line 330
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v1, :cond_1e9

    .line 332
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 334
    :cond_1e9
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iput-object v12, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    .line 338
    :cond_1ef
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 339
    .restart local v13       #szTmpProxyAddr:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27b

    .line 341
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v1, :cond_211

    .line 343
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 347
    :cond_211
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-static {v13}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpCheckValidIPAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy addr is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v2, v2, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 351
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 352
    .restart local v15       #tmpProxyPort:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    const/4 v2, 0x0

    iput v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 353
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27b

    .line 355
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proxy port is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget v2, v2, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 361
    .end local v15           #tmpProxyPort:Ljava/lang/String;
    :cond_27b
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 362
    .restart local v14       #szTmpUsername:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b6

    .line 364
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    if-nez v1, :cond_29d

    .line 366
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;-><init>()V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    .line 368
    :cond_29d
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iput-object v14, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    .line 371
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    sget-object v2, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    .line 374
    :cond_2b6
    sget-object v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->APN_PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->apntype:Ljava/lang/String;

    .line 376
    .end local v12           #szTmpAPN:Ljava/lang/String;
    .end local v13           #szTmpProxyAddr:Ljava/lang/String;
    .end local v14           #szTmpUsername:Ljava/lang/String;
    :cond_2c8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2cb
    .catchall {:try_start_3 .. :try_end_2cb} :catchall_30f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2cb} :catch_2e2

    .line 390
    .end local v11           #pos:I
    :cond_2cb
    :goto_2cb
    if-eqz v7, :cond_2d0

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_2d0
    if-eqz v8, :cond_2d5

    .line 394
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_2d5
    if-eqz v9, :cond_2da

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_2da
    :goto_2da
    return-void

    .line 305
    .restart local v11       #pos:I
    :cond_2db
    :try_start_2db
    const-string v1, "there is no enabled apn!!!!!!!"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2e0
    .catchall {:try_start_2db .. :try_end_2e0} :catchall_30f
    .catch Ljava/lang/Exception; {:try_start_2db .. :try_end_2e0} :catch_2e2

    goto/16 :goto_17b

    .line 383
    .end local v11           #pos:I
    :catch_2e2
    move-exception v10

    .line 385
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_2e4
    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppSetExistApn(Z)V

    .line 386
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2ee
    .catchall {:try_start_2e4 .. :try_end_2ee} :catchall_30f

    .line 390
    if-eqz v7, :cond_2f3

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_2f3
    if-eqz v8, :cond_2f8

    .line 394
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_2f8
    if-eqz v9, :cond_2da

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2da

    .line 311
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v11       #pos:I
    :cond_2fe
    :try_start_2fe
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto/16 :goto_17b

    .line 381
    .end local v11           #pos:I
    :cond_30a
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppSetExistApn(Z)V
    :try_end_30e
    .catchall {:try_start_2fe .. :try_end_30e} :catchall_30f
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_30e} :catch_2e2

    goto :goto_2cb

    .line 390
    :catchall_30f
    move-exception v1

    if-eqz v7, :cond_315

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_315
    if-eqz v8, :cond_31a

    .line 394
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_31a
    if-eqz v9, :cond_31f

    .line 397
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_31f
    throw v1
.end method

.method public xdmAgentAppProtoSetAccount(ILcom/wssyncmldm/agent/XDMAppProtoNetInfo;)Z
    .registers 4
    .parameter "protoAccount"
    .parameter "netInfo"

    .prologue
    .line 409
    invoke-direct {p0, p2}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->xdmAgentAppSaveNetInfo(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V

    .line 410
    const/4 v0, 0x1

    return v0
.end method
