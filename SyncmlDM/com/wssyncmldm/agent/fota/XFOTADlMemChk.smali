.class public Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;
.super Ljava/lang/Object;
.source "XFOTADlMemChk.java"


# static fields
.field public static bAvailableCache:Z

.field public static bUseCache:Z

.field public static bUseExternal:Z

.field public static bUseExternalSD:Z

.field public static bUseInternal:Z

.field public static devEncrypt:Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;

.field public static nDeltaDownState:I

.field public static nSplitPathIdx:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-boolean v1, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseCache:Z

    .line 22
    sput-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseInternal:Z

    .line 23
    sput-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternal:Z

    .line 24
    sput-boolean v0, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bUseExternalSD:Z

    .line 25
    sput-boolean v1, Lcom/wssyncmldm/agent/fota/XFOTADlMemChk;->bAvailableCache:Z

    .line 26
    return-void
.end method
