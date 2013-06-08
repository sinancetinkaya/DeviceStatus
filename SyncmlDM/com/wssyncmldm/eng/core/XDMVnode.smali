.class public Lcom/wssyncmldm/eng/core/XDMVnode;
.super Ljava/lang/Object;
.source "XDMVnode.java"


# instance fields
.field public acl:Lcom/wssyncmldm/eng/core/XDMOmList;

.field public childlist:Lcom/wssyncmldm/eng/core/XDMVnode;

.field public format:I

.field public m_szDdfName:Ljava/lang/String;

.field public m_szName:Ljava/lang/String;

.field public m_szTstamp:Ljava/lang/String;

.field public next:Lcom/wssyncmldm/eng/core/XDMVnode;

.field public ptParentNode:Lcom/wssyncmldm/eng/core/XDMVnode;

.field public scope:I

.field public size:I

.field public title:Ljava/lang/String;

.field public type:Lcom/wssyncmldm/eng/core/XDMOmList;

.field public vaddr:I

.field public verno:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
