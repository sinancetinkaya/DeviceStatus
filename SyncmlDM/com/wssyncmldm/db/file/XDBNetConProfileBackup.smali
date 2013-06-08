.class public Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;
.super Ljava/lang/Object;
.source "XDBNetConProfileBackup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public m_szAPN:Ljava/lang/String;

.field public m_szAddress:Ljava/lang/String;

.field public m_szId:Ljava/lang/String;

.field public m_szPassword:Ljava/lang/String;

.field public protoAppType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;->m_szAPN:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;->m_szId:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;->m_szPassword:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetConProfileBackup;->m_szAddress:Ljava/lang/String;

    .line 21
    return-void
.end method
