.class Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;
.super Landroid/os/Handler;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;


# direct methods
.method constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 468
    return-void
.end method
