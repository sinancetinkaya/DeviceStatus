.class public Lcom/wssyncmldm/db/file/XDBFileNVMParam;
.super Ljava/lang/Object;
.source "XDBFileNVMParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public AreaCode:I

.field public offset:J

.field public pExtFileID:I

.field public pNVMUser:Ljava/lang/Object;

.field public size:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
