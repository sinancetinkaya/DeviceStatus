.class public Lcom/wssyncmldm/adapter/XDMTelephonyData;
.super Ljava/lang/Object;
.source "XDMTelephonyData.java"


# static fields
.field private static final RADIO_TYPE_EDGE:I = 0x2

.field private static final RADIO_TYPE_GSM:I = 0x1

.field private static final RADIO_TYPE_UNKNOWN:I = 0x0

.field private static final RADIO_TYPE_WCDMA:I = 0x3


# instance fields
.field XDMLocationListener:Landroid/location/LocationListener;

.field public cellId:I

.field public homeMobileCountryCode:I

.field public homeMobileNetworkCode:I

.field public isNetworkRoaming:Z

.field public locationAreaCode:I

.field mAccuracy:F

.field mAltitude:D

.field mBearing:F

.field mLatitude:D

.field mLocMgr:Landroid/location/LocationManager;

.field mLongitude:D

.field mSpeed:F

.field mTime:J

.field public m_szCarrierName:Ljava/lang/String;

.field public m_szMsisdn:Ljava/lang/String;

.field public mobileCountryCode:I

.field public mobileNetworkCode:I

.field public nSimState:I

.field public networkType:I

.field public radioType:I

.field public signalStrength:I


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, -0x1

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->cellId:I

    .line 24
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->locationAreaCode:I

    .line 25
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->signalStrength:I

    .line 26
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mobileCountryCode:I

    .line 27
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mobileNetworkCode:I

    .line 28
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->homeMobileCountryCode:I

    .line 29
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->homeMobileNetworkCode:I

    .line 30
    iput v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->radioType:I

    .line 31
    iput-boolean v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    .line 32
    iput v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->m_szMsisdn:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->nSimState:I

    .line 40
    iput-wide v2, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLatitude:D

    .line 41
    iput-wide v2, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLongitude:D

    .line 42
    iput-wide v2, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAltitude:D

    .line 43
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mBearing:F

    .line 44
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mSpeed:F

    .line 45
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAccuracy:F

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mTime:J

    .line 52
    new-instance v0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;-><init>(Lcom/wssyncmldm/adapter/XDMTelephonyData;)V

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->XDMLocationListener:Landroid/location/LocationListener;

    .line 50
    return-void
.end method

.method public static xdmGetInstance(Landroid/telephony/TelephonyManager;Landroid/telephony/ServiceState;)Lcom/wssyncmldm/adapter/XDMTelephonyData;
    .registers 9
    .parameter "telephonyManager"
    .parameter "serviceState"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 142
    if-nez p0, :cond_c

    .line 144
    const-string v3, "telephonyManager is null, return."

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    .line 199
    :goto_b
    return-object v2

    .line 148
    :cond_c
    new-instance v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-direct {v2}, Lcom/wssyncmldm/adapter/XDMTelephonyData;-><init>()V

    .line 151
    .local v2, wstelephony:Lcom/wssyncmldm/adapter/XDMTelephonyData;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, szOperator:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 154
    .local v0, SimState:I
    iput v0, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->nSimState:I

    .line 156
    if-eqz p1, :cond_2b

    .line 159
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->m_szCarrierName:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 163
    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/wssyncmldm/adapter/XDMTelephonyData;->xdmSetMobileCodes(Ljava/lang/String;Z)V

    .line 167
    :cond_2b
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    iput v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    .line 169
    iget v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    if-ne v3, v6, :cond_44

    .line 171
    iput v6, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->radioType:I

    .line 182
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    iput-boolean v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->isNetworkRoaming:Z

    .line 183
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->m_szMsisdn:Ljava/lang/String;

    goto :goto_b

    .line 173
    :cond_44
    iget v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    if-ne v3, v4, :cond_4b

    .line 175
    iput v4, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->radioType:I

    goto :goto_37

    .line 177
    :cond_4b
    iget v3, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->networkType:I

    if-ne v3, v5, :cond_37

    .line 179
    iput v5, v2, Lcom/wssyncmldm/adapter/XDMTelephonyData;->radioType:I

    goto :goto_37
.end method

.method private xdmSetMobileCodes(Ljava/lang/String;Z)V
    .registers 8
    .parameter "szCodes"
    .parameter "homeValues"

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 215
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_8
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, mcc:I
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 217
    .local v2, mnc:I
    if-eqz p2, :cond_20

    .line 219
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->homeMobileCountryCode:I

    .line 220
    iput v2, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->homeMobileNetworkCode:I

    .line 237
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :cond_1f
    :goto_1f
    return-void

    .line 224
    .restart local v1       #mcc:I
    .restart local v2       #mnc:I
    :cond_20
    iput v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mobileCountryCode:I

    .line 225
    iput v2, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mobileNetworkCode:I
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_24} :catch_25
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_24} :catch_3d

    goto :goto_1f

    .line 228
    .end local v1           #mcc:I
    .end local v2           #mnc:I
    :catch_25
    move-exception v0

    .line 230
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileCodes: Invalid operator numeric data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f

    .line 232
    .end local v0           #ex:Ljava/lang/IndexOutOfBoundsException;
    :catch_3d
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileCodes: Operator numeric format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f
.end method


# virtual methods
.method public xdmInitNetworkProvider()V
    .registers 2

    .prologue
    .line 101
    const-string v0, "location"

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLocMgr:Landroid/location/LocationManager;

    .line 102
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLocMgr:Landroid/location/LocationManager;

    if-nez v0, :cond_13

    .line 104
    const-string v0, "LocationManager is null!!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 107
    :cond_13
    return-void
.end method

.method public xdmStartNetworkProvider()V
    .registers 7

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 111
    const-string v0, "Starting Network Provider."

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 114
    iput-wide v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLongitude:D

    .line 115
    iput-wide v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLatitude:D

    .line 116
    iput-wide v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAltitude:D

    .line 117
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mBearing:F

    .line 118
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mSpeed:F

    .line 119
    iput v4, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAccuracy:F

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mTime:J

    .line 122
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLocMgr:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->XDMLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 123
    return-void
.end method

.method public xdmStopNetwokProvider()V
    .registers 3

    .prologue
    .line 127
    const-string v0, "Stopping Network Provider."

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLocMgr:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData;->XDMLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 130
    return-void
.end method
