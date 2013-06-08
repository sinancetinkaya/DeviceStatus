.class public Lcom/wssyncmldm/db/file/XDBPollingInfo;
.super Ljava/lang/Object;
.source "XDBPollingInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XPollingInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public bDmCycle:Z

.field public m_szOrgVersionUrl:Ljava/lang/String;

.field public m_szPeriodUnit:Ljava/lang/String;

.field public m_szVersionUrl:Ljava/lang/String;

.field public nPeriod:I

.field public nRange:I

.field public nTime:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "http://org-fota-dn.ospserver.net/firmware/"

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szOrgVersionUrl:Ljava/lang/String;

    .line 22
    const-string v0, "http://fota-cloud-dn.ospserver.net/firmware/"

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szVersionUrl:Ljava/lang/String;

    .line 23
    const/4 v0, 0x7

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nPeriod:I

    .line 24
    const/16 v0, 0xf

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nTime:I

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->nRange:I

    .line 26
    const-string v0, "day"

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->m_szPeriodUnit:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/db/file/XDBPollingInfo;->bDmCycle:Z

    .line 28
    return-void
.end method
