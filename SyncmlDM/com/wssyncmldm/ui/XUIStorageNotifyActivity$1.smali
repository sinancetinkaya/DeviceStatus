.class Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$1;
.super Landroid/os/Handler;
.source "XUIStorageNotifyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 59
    :goto_8
    return-void

    .line 54
    :pswitch_9
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->DisplaySelectSdcard()V

    goto :goto_8

    .line 51
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
