.class public Lcom/wssyncmldm/db/file/XDBAgentInfo;
.super Ljava/lang/Object;
.source "XDBAgentInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public m_nAgentType:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/db/file/XDBAgentInfo;->m_nAgentType:I

    .line 16
    return-void
.end method
