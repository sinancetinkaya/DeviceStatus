.class public Lcom/wssyncmldm/db/file/XDBUrlInfo;
.super Ljava/lang/Object;
.source "XDBUrlInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public nPort:I

.field public pAddress:Ljava/lang/String;

.field public pPath:Ljava/lang/String;

.field public pProtocol:Ljava/lang/String;

.field public pURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pPath:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    .line 22
    return-void
.end method
