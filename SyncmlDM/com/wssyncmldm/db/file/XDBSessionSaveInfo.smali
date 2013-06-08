.class public Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
.super Ljava/lang/Object;
.source "XDBSessionSaveInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nNotiRetryCount:I

.field public nNotiUiEvent:I

.field public nSessionSaveState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    .line 16
    iput v0, p0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    .line 17
    iput v0, p0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiRetryCount:I

    .line 18
    return-void
.end method
