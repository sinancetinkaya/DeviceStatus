.class public Lcom/wssyncmldm/db/file/XDBNvm;
.super Ljava/lang/Object;
.source "XDBNvm.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

.field public NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

.field public NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

.field public NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

.field public NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

.field public NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

.field public NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

.field public NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

.field public NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

.field public tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBProflieListInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    .line 28
    new-instance v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 29
    new-instance v0, Lcom/wssyncmldm/db/file/XDBFumoInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBFumoInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMFUMOInfo:Lcom/wssyncmldm/db/file/XDBFumoInfo;

    .line 30
    new-instance v0, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPostPone:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    .line 31
    new-instance v0, Lcom/wssyncmldm/db/file/XDBSimInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBSimInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSYNCMLSimInfo:Lcom/wssyncmldm/db/file/XDBSimInfo;

    .line 32
    new-instance v0, Lcom/wssyncmldm/db/file/XDBPollingInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBPollingInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMNVMPollingInfo:Lcom/wssyncmldm/db/file/XDBPollingInfo;

    .line 36
    new-instance v0, Lcom/wssyncmldm/db/file/XDBAccXListNode;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBAccXListNode;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLAccXNode:Lcom/wssyncmldm/db/file/XDBAccXListNode;

    .line 37
    new-instance v0, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLResyncMode:Lcom/wssyncmldm/db/file/XDBResyncModeInfo;

    .line 40
    new-instance v0, Lcom/wssyncmldm/db/file/XDBNotiInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBNotiInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLNotiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;

    .line 42
    new-instance v0, Lcom/wssyncmldm/db/file/XDBAgentInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBAgentInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDmAgentInfo:Lcom/wssyncmldm/db/file/XDBAgentInfo;

    .line 43
    return-void
.end method
