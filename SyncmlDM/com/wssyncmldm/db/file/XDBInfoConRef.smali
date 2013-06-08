.class public Lcom/wssyncmldm/db/file/XDBInfoConRef;
.super Ljava/lang/Object;
.source "XDBInfoConRef.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public Active:Z

.field public NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

.field public PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

.field public bProxyUse:Z

.field public m_szHomeUrl:Ljava/lang/String;

.field public nService:I

.field public tAdvSetting:Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->m_szHomeUrl:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/wssyncmldm/db/file/XDBConRefNAP;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBConRefNAP;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    .line 21
    new-instance v0, Lcom/wssyncmldm/db/file/XDBConRefPX;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBConRefPX;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    .line 22
    new-instance v0, Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->tAdvSetting:Lcom/wssyncmldm/db/file/XDBConRefAdvanceSetting;

    .line 23
    return-void
.end method
