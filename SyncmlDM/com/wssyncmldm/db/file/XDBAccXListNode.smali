.class public Lcom/wssyncmldm/db/file/XDBAccXListNode;
.super Ljava/lang/Object;
.source "XDBAccXListNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBAccXListNode;->stAccXNodeList:[Lcom/wssyncmldm/db/file/XDBAccXNodeInfo;

    .line 16
    return-void
.end method
