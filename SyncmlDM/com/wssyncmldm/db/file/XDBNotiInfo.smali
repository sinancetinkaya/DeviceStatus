.class public Lcom/wssyncmldm/db/file/XDBNotiInfo;
.super Ljava/lang/Object;
.source "XDBNotiInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appId:I

.field public m_szServerId:Ljava/lang/String;

.field public m_szSessionId:Ljava/lang/String;

.field public rowId:I

.field public uiMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->rowId:I

    .line 21
    iput v0, p0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->appId:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->uiMode:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szSessionId:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNotiInfo;->m_szServerId:Ljava/lang/String;

    .line 25
    return-void
.end method
