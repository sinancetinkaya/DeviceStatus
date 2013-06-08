.class public Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;
.super Ljava/lang/Object;
.source "XDBAccXNodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public m_szAccount:Ljava/lang/String;

.field public m_szAppAddr:Ljava/lang/String;

.field public m_szAppAddrPort:Ljava/lang/String;

.field public m_szClientAppAuth:Ljava/lang/String;

.field public m_szServerAppAuth:Ljava/lang/String;

.field public m_szToConRef:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAccount:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAppAddr:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szAppAddrPort:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szClientAppAuth:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szServerAppAuth:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;->m_szToConRef:Ljava/lang/String;

    .line 24
    return-void
.end method
