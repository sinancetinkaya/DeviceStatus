.class public Lcom/wssyncmldm/eng/core/XDMAction;
.super Ljava/lang/Object;
.source "XDMAction.java"


# instance fields
.field public CmdID:I

.field public MsgID:I

.field public sourceList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public szCmdName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAction;->sourceList:Ljava/util/LinkedList;

    .line 7
    return-void
.end method


# virtual methods
.method public xdmCreateAction(Ljava/lang/String;Z)V
    .registers 4
    .parameter "szCmd"
    .parameter "createItemList"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wssyncmldm/eng/core/XDMAction;->szCmdName:Ljava/lang/String;

    .line 22
    if-nez p2, :cond_7

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMAction;->sourceList:Ljava/util/LinkedList;

    .line 26
    :cond_7
    return-void
.end method

.method public xdmFindAction(IILjava/lang/String;)Lcom/wssyncmldm/eng/core/XDMAction;
    .registers 9
    .parameter "msgRef"
    .parameter "cmdRef"
    .parameter "szCmd"

    .prologue
    .line 37
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMAction;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMAction;-><init>()V

    .line 38
    .local v0, action:Lcom/wssyncmldm/eng/core/XDMAction;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .line 39
    .local v2, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wsFindAction actionList size : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 40
    :goto_19
    if-ge v1, v2, :cond_1d

    if-gtz v2, :cond_1f

    .line 49
    :cond_1d
    const/4 v0, 0x0

    .end local v0           #action:Lcom/wssyncmldm/eng/core/XDMAction;
    :cond_1e
    return-object v0

    .line 42
    .restart local v0       #action:Lcom/wssyncmldm/eng/core/XDMAction;
    :cond_1f
    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMAction;->MsgID:I

    if-ne v3, p1, :cond_27

    iget v3, v0, Lcom/wssyncmldm/eng/core/XDMAction;->CmdID:I

    if-eq v3, p2, :cond_1e

    .line 46
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method
