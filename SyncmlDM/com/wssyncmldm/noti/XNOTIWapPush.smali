.class public Lcom/wssyncmldm/noti/XNOTIWapPush;
.super Ljava/lang/Object;
.source "XNOTIWapPush.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pBody:[B

.field public tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    .line 15
    return-void
.end method
