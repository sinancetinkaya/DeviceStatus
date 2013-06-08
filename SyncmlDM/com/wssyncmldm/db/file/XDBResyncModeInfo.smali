.class public Lcom/wssyncmldm/db/file/XDBResyncModeInfo;
.super Ljava/lang/Object;
.source "XDBResyncModeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public nNoceResyncMode:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wssyncmldm/db/file/XDBResyncModeInfo;->nNoceResyncMode:Z

    .line 14
    return-void
.end method
