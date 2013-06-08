.class public Lcom/wssyncmldm/db/file/XDBConRefNAP;
.super Ljava/lang/Object;
.source "XDBConRefNAP.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public Addr:Ljava/lang/String;

.field public Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

.field public NetworkProfileName:Ljava/lang/String;

.field public nAddrType:I

.field public nBearer:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBConRefNAP;->NetworkProfileName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/wssyncmldm/db/file/XDBConRefAuth;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBConRefAuth;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    .line 20
    return-void
.end method
