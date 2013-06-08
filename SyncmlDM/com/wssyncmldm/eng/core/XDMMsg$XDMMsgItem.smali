.class public Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgItem;
.super Ljava/lang/Object;
.source "XDMMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/eng/core/XDMMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDMMsgItem"
.end annotation


# instance fields
.field public param:Lcom/wssyncmldm/eng/core/XDMMsg$XDMMsgParam;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
