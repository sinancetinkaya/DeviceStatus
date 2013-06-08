.class public Lcom/wssyncmldm/db/file/XDBAdapter;
.super Ljava/lang/Object;
.source "XDBAdapter.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XTPInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;


# static fields
.field public static final CON_REF_ACTIVED:Z = true

.field public static final CON_REF_NOT_ACTIVED:Z = false

.field private static final DEFAULT_NULL_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field private static final DEFAULT_PORT:Ljava/lang/String; = "8080"

.field private static final GPRS_APN1:Ljava/lang/String; = "epc.tmobile.com"

.field private static final GPRS_APN2:Ljava/lang/String; = "devopw.t-mobile.com"

.field private static final GPRS_APN3:Ljava/lang/String; = "internet2.voicestream.com"

.field private static final NET_PROFILE_NAME1:Ljava/lang/String; = "Production"

.field private static final NET_PROFILE_NAME2:Ljava/lang/String; = "OSPS-TestBed"

.field private static final NET_PROFILE_NAME3:Ljava/lang/String; = "mFormation"

.field private static final PROXY_ADDRESS1:Ljava/lang/String; = "0.0.0.0"

.field private static final PROXY_ADDRESS2:Ljava/lang/String; = "0.0.0.0"

.field private static final PROXY_ADDRESS3:Ljava/lang/String; = "0.0.0.0"

.field private static final PROXY_PORT1:I

.field private static final PROXY_PORT2:I

.field private static final PROXY_PORT3:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static xdbAdpEraseDeltaArea()I
    .registers 2

    .prologue
    .line 60
    const-string v1, "FOTA_SetErase  Start"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/fota/JNIFOTA;

    invoke-direct {v0}, Lcom/fota/JNIFOTA;-><init>()V

    .line 63
    .local v0, jnifota:Lcom/fota/JNIFOTA;
    invoke-virtual {v0}, Lcom/fota/JNIFOTA;->FOTA_SetEraseDelta()I

    .line 64
    const-string v1, "FOTA_SetErase  end"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    return v1
.end method

.method public static xdbAdpGetFlag()I
    .registers 4

    .prologue
    .line 72
    new-instance v0, Lcom/fota/JNIFOTA;

    invoke-direct {v0}, Lcom/fota/JNIFOTA;-><init>()V

    .line 73
    .local v0, jnifota:Lcom/fota/JNIFOTA;
    const/4 v1, 0x0

    .line 75
    .local v1, retFlag:I
    invoke-virtual {v0}, Lcom/fota/JNIFOTA;->FOTA_GetFlag()I

    move-result v1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xdbAdpGetFlag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 78
    return v1
.end method

.method public static xdbAdpInitDeltaArea()Lcom/fota/JNIFOTA;
    .registers 2

    .prologue
    .line 649
    new-instance v0, Lcom/fota/JNIFOTA;

    invoke-direct {v0}, Lcom/fota/JNIFOTA;-><init>()V

    .line 650
    .local v0, jnifota:Lcom/fota/JNIFOTA;
    const-string v1, "FOTA_SetInit  Start"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 653
    const-string v1, "FOTA_SetInit  end"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 654
    return-object v0
.end method

.method public static xdbAdpInitNetProfile(Ljava/lang/Object;I)V
    .registers 8
    .parameter "NVMSyncMLDMInfo"
    .parameter "nIndex"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 112
    .local v0, pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const-string v1, "DM Profile"

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->NetworkConnName:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-boolean v3, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->Active:Z

    .line 114
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const/16 v2, 0x11

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nBearer:I

    .line 115
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iput v5, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    .line 116
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->tAdvSetting:Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;

    iput-boolean v4, v1, Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;->bStaticIpUse:Z

    .line 117
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->tAdvSetting:Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;

    iput-boolean v4, v1, Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;->bStaticDnsUse:Z

    .line 119
    if-nez p1, :cond_57

    .line 121
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "epc.tmobile.com"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 122
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v4, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 123
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v3, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    .line 124
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const-string v2, "0.0.0.0"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 125
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput v5, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    .line 126
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-boolean v3, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 127
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "Production"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    .line 157
    :cond_56
    :goto_56
    return-void

    .line 129
    :cond_57
    if-ne p1, v3, :cond_86

    .line 131
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "devopw.t-mobile.com"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 132
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v4, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 133
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v3, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    .line 134
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const-string v2, "0.0.0.0"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput v5, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    .line 136
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-boolean v3, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 137
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "OSPS-TestBed"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    goto :goto_56

    .line 140
    :cond_86
    const/4 v1, 0x2

    if-ne p1, v1, :cond_56

    .line 142
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "internet2.voicestream.com"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 143
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v4, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 144
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iput v3, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->nAddrType:I

    .line 145
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const-string v2, "0.0.0.0"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 146
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput v5, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->nService:I

    .line 147
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-boolean v3, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 148
    iget-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    const-string v2, "mFormation"

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    goto :goto_56
.end method

.method public static xdbAdpSetDeltaPath(Lcom/fota/JNIFOTA;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "jnifota"
    .parameter "szDeltaPath"
    .parameter "szSplitPath"

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    .line 96
    .local v0, ret:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xdbAdpSetDeltaPath Delta : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xdbAdpSetDeltaPath Split : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockAcquire()V

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/fota/JNIFOTA;->FOTA_SetWriteDelta(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 101
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockRelease()V

    .line 103
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_40

    .line 104
    const/4 v2, -0x1

    .line 105
    :goto_3f
    return v2

    :cond_40
    const/4 v2, 0x0

    goto :goto_3f
.end method

.method public static xdbAdpSetFlag(Lcom/fota/JNIFOTA;I)I
    .registers 4
    .parameter "jnifota"
    .parameter "flag"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdbAdpSetFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/fota/JNIFOTA;->FOTA_SetFlag()I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static xdbCheckOMADDURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "szURL"

    .prologue
    .line 777
    const-string v1, ""

    .line 779
    .local v1, szRet:Ljava/lang/String;
    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 780
    .local v0, locAmp:I
    if-gtz v0, :cond_b

    .line 788
    .end local p0
    :goto_a
    return-object p0

    .line 785
    .restart local p0
    :cond_b
    const-string v2, "&amp;"

    const-string v3, "&"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    move-object p0, v1

    .line 788
    goto :goto_a
.end method

.method public static xdbDoDMBootStrapURI([C[C[C)[C
    .registers 14
    .parameter "ResultURI"
    .parameter "BootURI"
    .parameter "BootPort"

    .prologue
    const/4 v8, 0x0

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, UriLen:I
    const/16 v9, 0x40

    new-array v7, v9, [C

    .line 807
    .local v7, temp:[C
    const/4 v1, 0x0

    .line 808
    .local v1, i:I
    const/4 v6, 0x0

    .line 809
    .local v6, t:I
    const/4 v2, 0x0

    .line 810
    .local v2, nCount:I
    const/4 v3, 0x0

    .line 812
    .local v3, nPortCount:I
    if-eqz p1, :cond_e

    if-nez p2, :cond_10

    :cond_e
    move-object p0, v8

    .line 867
    .end local p0
    :goto_f
    return-object p0

    .line 815
    .restart local p0
    :cond_10
    array-length v0, p1

    .line 817
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_9d

    .line 819
    aget-char v9, p1, v1

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_21

    .line 821
    add-int/lit8 v2, v2, 0x1

    .line 828
    :cond_1c
    :goto_1c
    const/4 v9, 0x2

    if-ne v3, v9, :cond_2a

    .line 830
    move-object p0, p1

    .line 831
    goto :goto_f

    .line 823
    :cond_21
    aget-char v9, p1, v1

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1c

    .line 825
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 834
    :cond_2a
    const/4 v9, 0x3

    if-ne v2, v9, :cond_93

    .line 836
    array-length v8, p2

    if-nez v8, :cond_66

    const/4 v8, 0x0

    aget-char v8, p2, v8

    if-nez v8, :cond_66

    .line 838
    const-string v8, "80"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 839
    invoke-static {v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, szArg:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 841
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 842
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 843
    .local v5, szPath:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 844
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 845
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 846
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    goto :goto_f

    .line 851
    .end local v4           #szArg:Ljava/lang/String;
    .end local v5           #szPath:Ljava/lang/String;
    :cond_66
    invoke-static {v7}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibCharToString([C)Ljava/lang/String;

    move-result-object v4

    .line 852
    .restart local v4       #szArg:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 853
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 855
    .restart local v5       #szPath:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 856
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 857
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 858
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 859
    const/4 v6, 0x0

    .line 860
    goto/16 :goto_f

    .line 864
    .end local v4           #szArg:Ljava/lang/String;
    .end local v5           #szPath:Ljava/lang/String;
    :cond_93
    aget-char v9, p1, v1

    aput-char v9, v7, v6

    .line 865
    add-int/lit8 v6, v6, 0x1

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_9d
    move-object p0, v8

    .line 867
    goto/16 :goto_f
.end method

.method public static xdbFileCreate(Ljava/lang/String;)Z
    .registers 5
    .parameter "szPath"

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 316
    .local v0, bRet:Z
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v0

    .line 324
    .end local v2           #file:Ljava/io/File;
    :goto_a
    return v0

    .line 319
    :catch_b
    move-exception v1

    .line 321
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static xdbFileDelete(Ljava/lang/String;)Z
    .registers 4
    .parameter "szPath"

    .prologue
    .line 613
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 625
    :cond_e
    const/4 v2, 0x1

    .end local v1           #file:Ljava/io/File;
    :goto_f
    return v2

    .line 618
    :catch_10
    move-exception v0

    .line 620
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 622
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static xdbFileExist(Ljava/lang/String;)Z
    .registers 4
    .parameter "szPath"

    .prologue
    const/4 v1, 0x0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 260
    const/4 v1, 0x1

    .line 266
    :cond_13
    return v1
.end method

.method public static xdbFileFreeSizeCheck(I)I
    .registers 13
    .parameter "nDataSize"

    .prologue
    .line 162
    const/4 v6, 0x4

    .line 163
    .local v6, nret:I
    const-wide/16 v0, 0x0

    .line 164
    .local v0, RemainSize:J
    const-wide/16 v2, 0x0

    .line 166
    .local v2, TotalSize:J
    sget-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    if-eqz v8, :cond_80

    .line 168
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 170
    int-to-long v8, p0

    cmp-long v8, v8, v0

    if-ltz v8, :cond_4a

    .line 172
    const-string v8, "%s/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, szFolderPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbClearCache(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_32

    .line 176
    const/4 v6, 0x4

    .line 250
    .end local v6           #nret:I
    .end local v7           #szFolderPath:Ljava/lang/String;
    :cond_31
    :goto_31
    return v6

    .line 179
    .restart local v6       #nret:I
    .restart local v7       #szFolderPath:Ljava/lang/String;
    :cond_32
    invoke-static {v7}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbFolderExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 182
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbClearFileInFolder(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 184
    const/4 v6, 0x4

    goto :goto_31

    .line 188
    :cond_45
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 190
    .end local v7           #szFolderPath:Ljava/lang/String;
    :cond_4a
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v2

    .line 191
    int-to-long v8, p0

    cmp-long v8, v8, v0

    if-gtz v8, :cond_80

    .line 193
    const-string v8, "Cache memory >>> XDB_FS_OK..."

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 194
    const-string v8, "Remain size : %d, Total size : %d and Delta Size : %d bytes"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 195
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDeltaFileSaveIndex(I)V

    .line 196
    const/4 v6, 0x0

    goto :goto_31

    .line 200
    :cond_80
    sget-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    if-eqz v8, :cond_c7

    .line 202
    const-wide/16 v4, 0x0

    .line 203
    .local v4, lDataCheckSize:J
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 204
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v2

    .line 205
    const-wide/16 v8, 0xa

    div-long v4, v2, v8

    .line 206
    int-to-long v8, p0

    add-long/2addr v8, v4

    cmp-long v8, v8, v0

    if-gtz v8, :cond_c7

    .line 208
    const-string v8, "Interior memory >>> XDB_FS_OK..."

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 209
    const-string v8, "Remain size : %d, Total size : %d and Delta Size : %d bytes"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 210
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDeltaFileSaveIndex(I)V

    .line 211
    const/4 v6, 0x0

    goto/16 :goto_31

    .line 214
    .end local v4           #lDataCheckSize:J
    :cond_c7
    sget-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    if-eqz v8, :cond_10d

    .line 216
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetExternalMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_10d

    .line 218
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 219
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v2

    .line 221
    int-to-long v8, p0

    cmp-long v8, v8, v0

    if-gtz v8, :cond_10d

    .line 223
    const-string v8, "External memory >>> XDB_FS_OK..."

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 224
    const-string v8, "Remain size : %d, Total size : %d and Delta Size : %d bytes"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 225
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDeltaFileSaveIndex(I)V

    .line 226
    const/4 v6, 0x0

    goto/16 :goto_31

    .line 230
    :cond_10d
    sget-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    if-eqz v8, :cond_153

    .line 232
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetExternalSDMemoryAvailable()Z

    move-result v8

    if-eqz v8, :cond_153

    .line 234
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v0

    .line 235
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTotalMemorySize(I)J

    move-result-wide v2

    .line 236
    int-to-long v8, p0

    cmp-long v8, v8, v0

    if-gtz v8, :cond_153

    .line 238
    const-string v8, "ExternalSD memory >>> XDB_FS_OK..."

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 239
    const-string v8, "Remain size : %d, Total size : %d and Delta Size : %d bytes"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 240
    const/4 v8, 0x3

    invoke-static {v8}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDeltaFileSaveIndex(I)V

    .line 241
    const/4 v6, 0x0

    goto/16 :goto_31

    .line 246
    :cond_153
    sget-boolean v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    if-nez v8, :cond_31

    sget-object v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    iget-boolean v8, v8, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    if-nez v8, :cond_163

    sget-object v8, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

    iget-boolean v8, v8, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    if-eqz v8, :cond_31

    .line 248
    :cond_163
    const/4 v6, 0x6

    goto/16 :goto_31
.end method

.method public static xdbFileWrite(Ljava/lang/String;ILjava/lang/Object;)Z
    .registers 9
    .parameter "szPath"
    .parameter "nSize"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 515
    check-cast p2, [B

    .end local p2
    move-object v3, p2

    check-cast v3, [B

    .line 516
    .local v3, tmp:[B
    const/4 v0, 0x0

    .line 520
    .local v0, ObjOut:Ljava/io/DataOutputStream;
    :try_start_7
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_27

    .line 521
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .local v1, ObjOut:Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    :try_start_12
    invoke-virtual {v1, v3, v5, p1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_51

    .line 532
    if-eqz v1, :cond_1a

    .line 534
    :try_start_17
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1e

    .line 542
    :cond_1a
    :goto_1a
    const/4 v3, 0x0

    .line 543
    const/4 v4, 0x1

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    :cond_1d
    :goto_1d
    return v4

    .line 537
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catch_1e
    move-exception v2

    .line 539
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 523
    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    :catch_27
    move-exception v2

    .line 525
    .local v2, e:Ljava/lang/Exception;
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3e

    .line 532
    if-eqz v0, :cond_1d

    .line 534
    :try_start_31
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1d

    .line 537
    :catch_35
    move-exception v2

    .line 539
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1d

    .line 530
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3e
    move-exception v4

    .line 532
    :goto_3f
    if-eqz v0, :cond_44

    .line 534
    :try_start_41
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 540
    :cond_44
    :goto_44
    throw v4

    .line 537
    :catch_45
    move-exception v2

    .line 539
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_44

    .line 530
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catchall_4e
    move-exception v4

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    goto :goto_3f

    .line 523
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catch_51
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    goto :goto_28
.end method

.method public static xdbFileWrite(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7
    .parameter "szPath"
    .parameter "data"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 551
    .local v0, ObjOut:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_22

    .line 552
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .local v1, ObjOut:Ljava/io/ObjectOutputStream;
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V

    .line 553
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_4d

    .line 564
    if-eqz v1, :cond_16

    .line 566
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_19

    .line 575
    :cond_16
    :goto_16
    const/4 v3, 0x1

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    :cond_18
    :goto_18
    return v3

    .line 569
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    :catch_19
    move-exception v2

    .line 571
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16

    .line 555
    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    :catch_22
    move-exception v2

    .line 557
    .local v2, e:Ljava/lang/Exception;
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_3a

    .line 558
    const/4 v3, 0x0

    .line 564
    if-eqz v0, :cond_18

    .line 566
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 569
    :catch_31
    move-exception v2

    .line 571
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 562
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v3

    .line 564
    :goto_3b
    if-eqz v0, :cond_40

    .line 566
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 572
    :cond_40
    :goto_40
    throw v3

    .line 569
    :catch_41
    move-exception v2

    .line 571
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_40

    .line 562
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    :catchall_4a
    move-exception v3

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    goto :goto_3b

    .line 555
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    :catch_4d
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    goto :goto_23
.end method

.method public static xdbFolderCreate(Ljava/lang/String;)Z
    .registers 6
    .parameter "szPath"

    .prologue
    const/4 v2, 0x1

    .line 331
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 334
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 344
    .end local v1           #file:Ljava/io/File;
    :cond_2b
    :goto_2b
    return v2

    .line 339
    :catch_2c
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public static xdbFolderExist(Ljava/lang/String;)Z
    .registers 5
    .parameter "szPath"

    .prologue
    const/4 v2, 0x0

    .line 295
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 298
    const-string v3, "Folder is not Exist!!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    .line 307
    .end local v1           #file:Ljava/io/File;
    :goto_11
    return v2

    .line 302
    :catch_12
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_11

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file:Ljava/io/File;
    :cond_1b
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public static xdbGetConnectType(I)I
    .registers 6
    .parameter "nAppId"

    .prologue
    .line 659
    const/4 v1, 0x0

    .line 661
    .local v1, type:I
    packed-switch p0, :pswitch_data_3a

    .line 692
    const/4 v1, 0x2

    .line 695
    :goto_5
    return v1

    .line 665
    :pswitch_6
    const-string v0, ""

    .line 666
    .local v0, szProtocol:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProtocol()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 669
    invoke-static {v0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpExchangeProtocolType(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 673
    :cond_17
    const/4 v1, 0x2

    .line 675
    goto :goto_5

    .line 679
    .end local v0           #szProtocol:Ljava/lang/String;
    :pswitch_19
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOProtocol()Ljava/lang/String;

    move-result-object v0

    .line 680
    .restart local v0       #szProtocol:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 682
    const-string v2, "Protool [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 683
    invoke-static {v0}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpHttpExchangeProtocolType(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 687
    :cond_37
    const/4 v1, 0x2

    .line 689
    goto :goto_5

    .line 661
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method

.method public static xdbGetNotiDigest(ILjava/lang/String;I[BI)Ljava/lang/String;
    .registers 9
    .parameter "nAppId"
    .parameter "szServerID"
    .parameter "nAuthType"
    .parameter "pPacketBody"
    .parameter "nBodyLen"

    .prologue
    const/4 v1, 0x0

    .line 743
    const-string v0, ""

    .line 745
    .local v0, szDigest:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 747
    const-string v2, "pServerID is NULL"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 764
    :goto_e
    return-object v1

    .line 751
    :cond_f
    packed-switch p0, :pswitch_data_30

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not Support Application :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e

    .line 755
    :pswitch_29
    invoke-static {p1, p2, p3, p4}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiDigest(Ljava/lang/String;I[BI)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 764
    goto :goto_e

    .line 751
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public static xdbGetNotiEvent(I)I
    .registers 4
    .parameter "nAppId"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, nEvent:I
    packed-switch p0, :pswitch_data_36

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Support Application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 721
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 722
    return v0

    .line 713
    :pswitch_31
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiEvent()I

    move-result v0

    .line 714
    goto :goto_1a

    .line 710
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public xdbFileCreateWrite(Ljava/lang/String;[B)Z
    .registers 8
    .parameter "szPath"
    .parameter "data"

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 583
    .local v0, ObjOut:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1f

    .line 584
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .local v1, ObjOut:Ljava/io/DataOutputStream;
    :try_start_b
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_4a

    .line 595
    if-eqz v1, :cond_13

    .line 597
    :try_start_10
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_16

    .line 606
    :cond_13
    :goto_13
    const/4 v3, 0x1

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    :cond_15
    :goto_15
    return v3

    .line 600
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catch_16
    move-exception v2

    .line 602
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13

    .line 586
    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    :catch_1f
    move-exception v2

    .line 588
    .local v2, e:Ljava/lang/Exception;
    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_37

    .line 589
    const/4 v3, 0x0

    .line 595
    if-eqz v0, :cond_15

    .line 597
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_15

    .line 600
    :catch_2e
    move-exception v2

    .line 602
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_15

    .line 593
    .end local v2           #e:Ljava/io/IOException;
    :catchall_37
    move-exception v3

    .line 595
    :goto_38
    if-eqz v0, :cond_3d

    .line 597
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 603
    :cond_3d
    :goto_3d
    throw v3

    .line 600
    :catch_3e
    move-exception v2

    .line 602
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3d

    .line 593
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catchall_47
    move-exception v3

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    goto :goto_38

    .line 586
    .end local v0           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v1       #ObjOut:Ljava/io/DataOutputStream;
    :catch_4a
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/DataOutputStream;
    .restart local v0       #ObjOut:Ljava/io/DataOutputStream;
    goto :goto_20
.end method

.method public xdbFileExists(Ljava/lang/String;)I
    .registers 5
    .parameter "szFileName"

    .prologue
    const/4 v1, -0x1

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 278
    const/4 v1, 0x0

    .line 287
    :cond_13
    return v1
.end method

.method public xdbFileGetSize(Ljava/lang/String;)J
    .registers 9
    .parameter "szPath"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, ObjIn:Ljava/io/DataInputStream;
    const-wide/16 v3, 0x0

    .line 353
    .local v3, len:J
    :try_start_3
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_23

    .line 354
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .local v1, ObjIn:Ljava/io/DataInputStream;
    :try_start_d
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_4d

    move-result v5

    int-to-long v3, v5

    .line 364
    if-eqz v1, :cond_17

    .line 366
    :try_start_14
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v0, v1

    .line 374
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    :cond_18
    :goto_18
    return-wide v3

    .line 369
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_19
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v0, v1

    .line 373
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_18

    .line 356
    .end local v2           #e:Ljava/io/IOException;
    :catch_23
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/Exception;
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3a

    .line 364
    if-eqz v0, :cond_18

    .line 366
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_18

    .line 369
    :catch_31
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_18

    .line 362
    .end local v2           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v5

    .line 364
    :goto_3b
    if-eqz v0, :cond_40

    .line 366
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 372
    :cond_40
    :goto_40
    throw v5

    .line 369
    :catch_41
    move-exception v2

    .line 371
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_40

    .line 362
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catchall_4a
    move-exception v5

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_3b

    .line 356
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_4d
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_24
.end method

.method public xdbFileRead(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 9
    .parameter "szPath"
    .parameter "nType"

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, ObjIn:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 416
    .local v3, obj:Ljava/lang/Object;
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_21

    .line 417
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .local v1, ObjIn:Ljava/io/ObjectInputStream;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_4b

    move-result-object v3

    .line 427
    if-eqz v1, :cond_15

    .line 429
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    :cond_15
    move-object v0, v1

    .line 438
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    :cond_16
    :goto_16
    return-object v3

    .line 432
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v3       #obj:Ljava/lang/Object;
    :catch_17
    move-exception v2

    .line 434
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v0, v1

    .line 436
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_16

    .line 419
    .end local v2           #e:Ljava/io/IOException;
    :catch_21
    move-exception v2

    .line 421
    .local v2, e:Ljava/lang/Exception;
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_38

    .line 427
    if-eqz v0, :cond_16

    .line 429
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_16

    .line 432
    :catch_2f
    move-exception v2

    .line 434
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16

    .line 425
    .end local v2           #e:Ljava/io/IOException;
    :catchall_38
    move-exception v4

    .line 427
    :goto_39
    if-eqz v0, :cond_3e

    .line 429
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 435
    :cond_3e
    :goto_3e
    throw v4

    .line 432
    :catch_3f
    move-exception v2

    .line 434
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3e

    .line 425
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    :catchall_48
    move-exception v4

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_39

    .line 419
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    :catch_4b
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_22
.end method

.method public xdbFileRead(Ljava/lang/String;[BII)Z
    .registers 11
    .parameter "szPath"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, ret:I
    const/4 v0, 0x0

    .line 445
    .local v0, ObjIn:Ljava/io/DataInputStream;
    if-gtz p4, :cond_6

    .line 474
    :cond_5
    :goto_5
    return v4

    .line 449
    :cond_6
    :try_start_6
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_29

    .line 450
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .local v1, ObjIn:Ljava/io/DataInputStream;
    :try_start_10
    invoke-virtual {v1, p2, p3, p4}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_53

    move-result v3

    .line 460
    if-eqz v1, :cond_19

    .line 462
    :try_start_16
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1f

    :cond_19
    move-object v0, v1

    .line 471
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    :cond_1a
    :goto_1a
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 472
    const/4 v4, 0x1

    goto :goto_5

    .line 465
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_1f
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v0, v1

    .line 469
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_1a

    .line 452
    .end local v2           #e:Ljava/io/IOException;
    :catch_29
    move-exception v2

    .line 454
    .local v2, e:Ljava/lang/Exception;
    :goto_2a
    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_40

    .line 460
    if-eqz v0, :cond_1a

    .line 462
    :try_start_33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_1a

    .line 465
    :catch_37
    move-exception v2

    .line 467
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1a

    .line 458
    .end local v2           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    .line 460
    :goto_41
    if-eqz v0, :cond_46

    .line 462
    :try_start_43
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 468
    :cond_46
    :goto_46
    throw v4

    .line 465
    :catch_47
    move-exception v2

    .line 467
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_46

    .line 458
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catchall_50
    move-exception v4

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_41

    .line 452
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_53
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_2a
.end method

.method public xdbFileRead(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 9
    .parameter "szPath"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, ObjIn:Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    .line 384
    .local v4, objArray:[Ljava/lang/Object;
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_27

    .line 385
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .local v2, ObjIn:Ljava/io/ObjectInputStream;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_51

    .line 395
    if-eqz v2, :cond_1b

    .line 397
    :try_start_18
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d

    :cond_1b
    move-object v1, v2

    .line 406
    .end local v2           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    :cond_1c
    :goto_1c
    return-object v4

    .line 400
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v2       #ObjIn:Ljava/io/ObjectInputStream;
    :catch_1d
    move-exception v3

    .line 402
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v1, v2

    .line 404
    .end local v2           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_1c

    .line 387
    .end local v3           #e:Ljava/io/IOException;
    :catch_27
    move-exception v3

    .line 389
    .local v3, e:Ljava/lang/Exception;
    :goto_28
    :try_start_28
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_3e

    .line 395
    if-eqz v1, :cond_1c

    .line 397
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_1c

    .line 400
    :catch_35
    move-exception v3

    .line 402
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1c

    .line 393
    .end local v3           #e:Ljava/io/IOException;
    :catchall_3e
    move-exception v5

    .line 395
    :goto_3f
    if-eqz v1, :cond_44

    .line 397
    :try_start_41
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    .line 403
    :cond_44
    :goto_44
    throw v5

    .line 400
    :catch_45
    move-exception v3

    .line 402
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_44

    .line 393
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #ObjIn:Ljava/io/ObjectInputStream;
    :catchall_4e
    move-exception v5

    move-object v1, v2

    .end local v2           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_3f

    .line 387
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v2       #ObjIn:Ljava/io/ObjectInputStream;
    :catch_51
    move-exception v3

    move-object v1, v2

    .end local v2           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_28
.end method

.method public xdbFileReadOffset(Ljava/lang/String;[BII)Z
    .registers 12
    .parameter "szPath"
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 479
    if-gtz p4, :cond_4

    .line 510
    :cond_3
    :goto_3
    return v4

    .line 482
    :cond_4
    const/4 v1, 0x0

    .line 485
    .local v1, f:Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v3, file:Ljava/io/File;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_40
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_29

    .line 487
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .local v2, f:Ljava/io/RandomAccessFile;
    int-to-long v5, p3

    :try_start_12
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 488
    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_50
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_53

    .line 499
    if-eqz v2, :cond_1e

    .line 501
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_20

    .line 510
    :cond_1e
    :goto_1e
    const/4 v4, 0x1

    goto :goto_3

    .line 504
    :catch_20
    move-exception v0

    .line 506
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1e

    .line 490
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .end local v3           #file:Ljava/io/File;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    :catch_29
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_40

    .line 499
    if-eqz v1, :cond_3

    .line 501
    :try_start_33
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3

    .line 504
    :catch_37
    move-exception v0

    .line 506
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    :catchall_40
    move-exception v4

    .line 499
    :goto_41
    if-eqz v1, :cond_46

    .line 501
    :try_start_43
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 507
    :cond_46
    :goto_46
    throw v4

    .line 504
    :catch_47
    move-exception v0

    .line 506
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_46

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    .restart local v3       #file:Ljava/io/File;
    :catchall_50
    move-exception v4

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_41

    .line 490
    .end local v1           #f:Ljava/io/RandomAccessFile;
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    :catch_53
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/RandomAccessFile;
    .restart local v1       #f:Ljava/io/RandomAccessFile;
    goto :goto_2a
.end method

.method public xdbFileRemove(Ljava/lang/String;)I
    .registers 5
    .parameter "szPath"

    .prologue
    .line 633
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 635
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    .line 644
    :cond_e
    const/4 v2, 0x0

    .end local v1           #file:Ljava/io/File;
    :goto_f
    return v2

    .line 637
    :catch_10
    move-exception v0

    .line 639
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 641
    const/4 v2, -0x1

    goto :goto_f
.end method
