.class public Lcom/wssyncmldm/adapter/XDMDevinfAdapter;
.super Ljava/lang/Object;
.source "XDMDevinfAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final BATTERY_MINIMUM_LEVEL:I = 0xf

.field private static final BATTERY_MINIMUM_LEVEL_TMO:I = 0x32

.field public static final CONFIG_SKT_FEATURE:Ljava/lang/String; = "45005"

.field private static final DEFAULT_DEVID_VALUE:Ljava/lang/String; = "Default"

.field private static final DEFAULT_MANUFACTURER:Ljava/lang/String; = "SAMSUNG"

.field private static final DEFAULT_MODEL_NAME:Ljava/lang/String; = "GT-I9100"

.field private static final DEFAULT_NULL_DEVID_VALUE:Ljava/lang/String; = "000000000000000"

.field private static final DEFAULT_NULL_DEVID_VALUE2:Ljava/lang/String; = "B0000000"

.field public static final DELTA_KOR_WIFI_SIZE_20MB:I = 0x14

.field public static final DELTA_KOR_WIFI_SIZE_30MB:I = 0x1e

.field public static final DELTA_KOR_WIFI_SIZE_90MB:I = 0x5a

.field public static final DELTA_MPCS_WIFI_SIZE_50MB:I = 0x32

.field public static final SALES_CODE_KOR_KT:Ljava/lang/String; = "KT"

.field public static final SALES_CODE_KOR_LGT:Ljava/lang/String; = "LG"

.field public static final SALES_CODE_KOR_SKT:Ljava/lang/String; = "SKT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmDevAdpBatteryLifeCheck()Z
    .registers 5

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, mMinimumLebel:I
    const/4 v1, 0x0

    .line 268
    .local v1, battLevel:I
    const/4 v0, 0x0

    .line 270
    .local v0, bRtnValue:Z
    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetIntFromFile(Ljava/lang/String;)I

    move-result v1

    .line 271
    const-string v3, "OPEN"

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 272
    const/16 v2, 0x32

    .line 276
    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battery level ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Minimum Level ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 277
    if-lt v1, v2, :cond_3e

    .line 279
    const/4 v0, 0x1

    .line 281
    :cond_3e
    return v0

    .line 274
    :cond_3f
    const/16 v2, 0xf

    goto :goto_15
.end method

.method public static xdmDevAdpCheckRoamingDataConnect()Z
    .registers 1

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method public static xdmDevAdpCheckRoamingUnableNetworkMsg()Z
    .registers 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public static xdmDevAdpCheckUnableUSIM()Z
    .registers 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public static xdmDevAdpGetDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string v0, ""

    .line 55
    .local v0, szDeviceId:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetEnableLiveDemoFromCSCFeature()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 57
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetTWID()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "B0000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 79
    :cond_2a
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpRetryGetDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_2e
    return-object v0

    .line 61
    :cond_2f
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 69
    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v1, :cond_44

    .line 70
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetDevID()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 65
    :pswitch_3f
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetDevID()Ljava/lang/String;

    move-result-object v0

    .line 66
    goto :goto_c

    .line 72
    :cond_44
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetTWID()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 61
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public static xdmDevAdpGetFirmwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    const-string v0, ""

    .line 200
    .local v0, szFirmwareVer:Ljava/lang/String;
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetFwV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetCscV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetPhoneV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 208
    :goto_26
    return-object v0

    .line 206
    :cond_27
    const-string v0, "I9300XX"

    goto :goto_26
.end method

.method public static xdmDevAdpGetFullDeviceID()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 134
    const-string v0, ""

    .line 136
    .local v0, szDeviceID:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetEnableLiveDemoFromCSCFeature()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 138
    const-string v1, "TWID:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_18
    return-object v0

    .line 142
    :cond_19
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetPhoneType()I

    move-result v1

    packed-switch v1, :pswitch_data_60

    .line 151
    sget-boolean v1, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v1, :cond_51

    .line 152
    const-string v1, "IMEI:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 145
    :pswitch_33
    const-string v1, "MEID:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    goto :goto_18

    .line 148
    :pswitch_42
    const-string v1, "IMEI:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_18

    .line 154
    :cond_51
    const-string v1, "TWID:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 142
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_42
        :pswitch_33
    .end packed-switch
.end method

.method public static xdmDevAdpGetHardwareVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetHwV()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, szHardwareVer:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 232
    :goto_a
    return-object v0

    .line 231
    :cond_b
    const-string v0, "REV0.4"

    goto :goto_a
.end method

.method public static xdmDevAdpGetHttpUserAgent()Ljava/lang/String;
    .registers 7

    .prologue
    .line 246
    const-string v2, ""

    .line 247
    .local v2, szUserAgent:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, szManufacturer:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetModel()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, szModelName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 255
    :goto_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 260
    :goto_16
    const-string v3, "%s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    const-string v6, "SyncML_DM Client"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    return-object v2

    .line 252
    :cond_2b
    const-string v0, "SAMSUNG"

    goto :goto_10

    .line 257
    :cond_2e
    const-string v1, "GT-I9100"

    goto :goto_16
.end method

.method public static xdmDevAdpGetIMSIFromSIM()Ljava/lang/String;
    .registers 1

    .prologue
    .line 322
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetIMSIFromSIM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmDevAdpGetIMSIFromSIM2()Ljava/lang/String;
    .registers 1

    .prologue
    .line 328
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetIMSIFromSIM2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static xdmDevAdpGetLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetLanguage()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, szLanguage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 184
    :goto_a
    return-object v0

    .line 183
    :cond_b
    const-string v0, "en-us"

    goto :goto_a
.end method

.method public static xdmDevAdpGetManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, szManufacturer:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 167
    :goto_a
    return-object v0

    .line 166
    :cond_b
    const-string v0, "Samsung"

    goto :goto_a
.end method

.method public static xdmDevAdpGetModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetModel()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, szModel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 176
    :goto_a
    return-object v0

    .line 174
    :cond_b
    const-string v0, "GT-I9070"

    goto :goto_a
.end method

.method public static xdmDevAdpGetOEMName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetOEM()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, szOem:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 192
    :goto_a
    return-object v0

    .line 191
    :cond_b
    const-string v0, "Samsung Electronics."

    goto :goto_a
.end method

.method public static xdmDevAdpGetSalesCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, szSalesCode:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSalesCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 241
    :goto_20
    return-object v0

    .line 240
    :cond_21
    const-string v0, "XEU"

    goto :goto_20
.end method

.method public static xdmDevAdpGetSoftwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 213
    const-string v0, ""

    .line 216
    .local v0, szSoftwareVer:Ljava/lang/String;
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetSwV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetCscV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetPhoneV()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 224
    :goto_26
    return-object v0

    .line 222
    :cond_27
    const-string v0, "I9300XX"

    goto :goto_26
.end method

.method public static xdmDevAdpRetryGetDeviceID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    const-string v2, ""

    .line 88
    .local v2, szDeviceId:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    const/16 v3, 0xa

    if-ge v1, v3, :cond_5c

    .line 92
    const-wide/16 v3, 0x3e8

    :try_start_9
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_39

    .line 100
    :goto_c
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetEnableLiveDemoFromCSCFeature()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 102
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetTWID()Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "Default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "000000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "B0000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 124
    :cond_34
    const-string v2, "000000000000000"

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 94
    :catch_39
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c

    .line 106
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_42
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 114
    sget-boolean v3, Lcom/wssyncmldm/adapter/XDMFeature;->XDM_FEATURE_WIFI_ONLY_MODEL:Z

    if-nez v3, :cond_57

    .line 115
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetDevID()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 110
    :pswitch_52
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetDevID()Ljava/lang/String;

    move-result-object v2

    .line 111
    goto :goto_16

    .line 117
    :cond_57
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetTWID()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 129
    :cond_5c
    return-object v2

    .line 106
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method public static xdmDevAdpVerifyDevID()Z
    .registers 2

    .prologue
    .line 407
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, szDeviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "B0000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 411
    :cond_22
    const/4 v1, 0x0

    .line 413
    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x1

    goto :goto_23
.end method

.method public static xdmDevAdpVerifySubscId()Z
    .registers 5

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, nRet:Z
    new-instance v0, Lcom/wssyncmldm/db/file/XDBSimInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBSimInfo;-><init>()V

    .line 336
    .local v0, nIMSI:Lcom/wssyncmldm/db/file/XDBSimInfo;
    const/4 v2, 0x0

    .line 386
    .local v2, oIMSI:Lcom/wssyncmldm/db/file/XDBSimInfo;
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetIMSIFromSIM()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/wssyncmldm/db/file/XDBSimInfo;->m_szIMSI:Ljava/lang/String;

    .line 387
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBSimInfo;->m_szIMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 402
    :goto_15
    return v1

    .line 390
    :cond_16
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSimIMSI()Lcom/wssyncmldm/db/file/XDBSimInfo;

    move-result-object v2

    .line 392
    iget-object v3, v2, Lcom/wssyncmldm/db/file/XDBSimInfo;->m_szIMSI:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 394
    iget-object v3, v0, Lcom/wssyncmldm/db/file/XDBSimInfo;->m_szIMSI:Ljava/lang/String;

    iget-object v4, v2, Lcom/wssyncmldm/db/file/XDBSimInfo;->m_szIMSI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 396
    const-string v3, "SIM Swap"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x1

    .line 400
    :cond_32
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSimIMSI(Lcom/wssyncmldm/db/file/XDBSimInfo;)V

    goto :goto_15
.end method

.method public static xdmGetEnableDownloadSizeFromCSCFeature()I
    .registers 3

    .prologue
    .line 536
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SyncML_EnableLimitationDeltaSizeViaMobileNet"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 537
    .local v0, nSize:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable download size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 538
    return v0
.end method

.method public static xdmGetEnableLiveDemoFromCSCFeature()Z
    .registers 3

    .prologue
    .line 545
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 546
    .local v0, bEnable:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable LiveDemo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 547
    return v0
.end method

.method private static xdmGetIntFromFile(Ljava/lang/String;)I
    .registers 8
    .parameter "szPath"

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, in:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 291
    .local v3, ret:I
    :try_start_2
    const-string v4, ""

    .line 292
    .local v4, szFileData:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_29

    .line 293
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_60
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_63

    move-result v3

    .line 306
    if-eqz v2, :cond_1d

    .line 308
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1f

    :cond_1d
    move-object v1, v2

    .line 317
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #szFileData:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :cond_1e
    :goto_1e
    return v3

    .line 311
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #szFileData:Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 313
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v1, v2

    .line 315
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1e

    .line 297
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #szFileData:Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    :goto_2a
    :try_start_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_50

    .line 300
    const/4 v3, 0x0

    .line 306
    if-eqz v1, :cond_1e

    .line 308
    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_1e

    .line 311
    :catch_47
    move-exception v0

    .line 313
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1e

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    :catchall_50
    move-exception v5

    .line 306
    :goto_51
    if-eqz v1, :cond_56

    .line 308
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    .line 314
    :cond_56
    :goto_56
    throw v5

    .line 311
    :catch_57
    move-exception v0

    .line 313
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_56

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #szFileData:Ljava/lang/String;
    :catchall_60
    move-exception v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_51

    .line 297
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_63
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2a
.end method

.method public static xdmWifiDownloadSizeCheck()Z
    .registers 14

    .prologue
    const/16 v13, 0xd

    const-wide/high16 v11, 0x403e

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 468
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 529
    .local v0, dObjectSize:D
    .local v2, nDownloadEnableSize:I
    :cond_c
    :goto_c
    return v5

    .line 471
    .end local v0           #dObjectSize:D
    .end local v2           #nDownloadEnableSize:I
    :cond_d
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetObjectSizeFUMO()I

    move-result v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x4130

    div-double v0, v7, v9

    .line 472
    .restart local v0       #dObjectSize:D
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check Object size bigger than firmware max size ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmGetEnableDownloadSizeFromCSCFeature()I

    move-result v2

    .line 475
    .restart local v2       #nDownloadEnableSize:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_ab

    .line 478
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, szSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetServiceType()I

    move-result v3

    .line 480
    .local v3, networkType:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "telephony.networkType is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 482
    const-string v7, "OPEN"

    const-string v8, "KOR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 484
    const-string v7, "SKT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 486
    if-ne v3, v13, :cond_71

    .line 488
    cmpl-double v7, v0, v11

    if-lez v7, :cond_c

    move v5, v6

    .line 489
    goto :goto_c

    .line 493
    :cond_71
    const-wide/high16 v7, 0x4034

    cmpl-double v7, v0, v7

    if-lez v7, :cond_c

    move v5, v6

    .line 494
    goto :goto_c

    .line 497
    :cond_79
    const-string v7, "KT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 499
    cmpl-double v7, v0, v11

    if-lez v7, :cond_c

    move v5, v6

    .line 500
    goto :goto_c

    .line 504
    :cond_87
    const-wide v7, 0x4056800000000000L

    cmpl-double v7, v0, v7

    if-lez v7, :cond_c

    move v5, v6

    .line 505
    goto/16 :goto_c

    .line 508
    :cond_93
    const-string v7, "OPEN"

    const-string v8, "MTR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 510
    const-wide/high16 v7, 0x4049

    cmpl-double v7, v0, v7

    if-ltz v7, :cond_a6

    move v5, v6

    .line 512
    goto/16 :goto_c

    .line 516
    :cond_a6
    if-eq v3, v13, :cond_c

    move v5, v6

    .line 519
    goto/16 :goto_c

    .line 526
    .end local v3           #networkType:I
    .end local v4           #szSalesCode:Ljava/lang/String;
    :cond_ab
    int-to-double v7, v2

    cmpl-double v7, v0, v7

    if-lez v7, :cond_c

    move v5, v6

    .line 527
    goto/16 :goto_c
.end method
