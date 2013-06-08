.class Lcom/sec/factory/app/ui/UIHardKey$2;
.super Landroid/os/Handler;
.source "UIHardKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIHardKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIHardKey;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIHardKey;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIHardKey$2;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey$2;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UIHardKey;->mBlockedAfKey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIHardKey;->access$002(Lcom/sec/factory/app/ui/UIHardKey;Z)Z

    .line 78
    return-void
.end method
