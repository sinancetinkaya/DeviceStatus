.class public Lcom/wssyncmldm/eng/core/XDMEvent;
.super Ljava/lang/Object;
.source "XDMEvent.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XDMSetEvent(Ljava/lang/Object;I)V
    .registers 5
    .parameter "userdata"
    .parameter "nevt"

    .prologue
    .line 7
    const/4 v0, 0x0

    .line 8
    .local v0, UIEventMsg:I
    move-object v1, p0

    .line 9
    .local v1, pParam1:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 11
    .local v2, pParam2:Ljava/lang/Object;
    move v0, p1

    .line 12
    invoke-static {v0, v1, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendUIMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method
