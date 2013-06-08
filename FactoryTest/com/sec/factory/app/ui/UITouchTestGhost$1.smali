.class Lcom/sec/factory/app/ui/UITouchTestGhost$1;
.super Landroid/os/Handler;
.source "UITouchTestGhost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITouchTestGhost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITouchTestGhost;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITouchTestGhost$1;->this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITouchTestGhost$1;->this$0:Lcom/sec/factory/app/ui/UITouchTestGhost;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITouchTestGhost;->finish()V

    .line 31
    return-void
.end method
