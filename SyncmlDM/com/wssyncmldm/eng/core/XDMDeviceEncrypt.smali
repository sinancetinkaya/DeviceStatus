.class public Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;
.super Ljava/lang/Object;
.source "XDMDeviceEncrypt.java"


# instance fields
.field public bAllareaDecrypted:Z

.field public bAllareaEncrypted:Z

.field public bInternalEncrypted:Z

.field public bSDEncrypted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaEncrypted:Z

    .line 13
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bInternalEncrypted:Z

    .line 14
    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bSDEncrypted:Z

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wssyncmldm/eng/core/XDMDeviceEncrypt;->bAllareaDecrypted:Z

    .line 16
    return-void
.end method
