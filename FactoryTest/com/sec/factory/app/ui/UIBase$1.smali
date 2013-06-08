.class Lcom/sec/factory/app/ui/UIBase$1;
.super Landroid/os/Handler;
.source "UIBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$1;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 92
    :goto_5
    return-void

    .line 88
    :pswitch_6
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$1;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBase;->finish()V

    goto :goto_5

    .line 86
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
