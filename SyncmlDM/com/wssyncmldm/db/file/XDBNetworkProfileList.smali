.class public Lcom/wssyncmldm/db/file/XDBNetworkProfileList;
.super Ljava/lang/Object;
.source "XDBNetworkProfileList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ActivateID:I

.field public ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

.field public m_szConRefName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->m_szConRefName:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-direct {v0}, Lcom/wssyncmldm/db/file/XDBInfoConRef;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 18
    return-void
.end method
