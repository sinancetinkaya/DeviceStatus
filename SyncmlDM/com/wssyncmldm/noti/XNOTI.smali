.class public Lcom/wssyncmldm/noti/XNOTI;
.super Ljava/lang/Object;
.source "XNOTI.java"


# instance fields
.field public appId:I

.field public digestdata:[B

.field public mimeType:I

.field public nBodySize:I

.field public statusDigest:I

.field public triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

.field public triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/wssyncmldm/noti/XNOTI;->appId:I

    .line 18
    iput v0, p0, Lcom/wssyncmldm/noti/XNOTI;->statusDigest:I

    .line 19
    iput v0, p0, Lcom/wssyncmldm/noti/XNOTI;->mimeType:I

    .line 20
    iput v0, p0, Lcom/wssyncmldm/noti/XNOTI;->nBodySize:I

    .line 22
    new-instance v0, Lcom/wssyncmldm/noti/XNOTITriggerheader;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTITriggerheader;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTI;->triggerHeader:Lcom/wssyncmldm/noti/XNOTITriggerheader;

    .line 23
    new-instance v0, Lcom/wssyncmldm/noti/XNOTITriggerbody;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTITriggerbody;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTI;->triggerBody:Lcom/wssyncmldm/noti/XNOTITriggerbody;

    .line 24
    return-void
.end method
