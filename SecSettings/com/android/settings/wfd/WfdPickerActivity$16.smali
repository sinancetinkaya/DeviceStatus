.class Lcom/android/settings/wfd/WfdPickerActivity$16;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2180
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 2186
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 2190
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 2191
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3800(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 2192
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$16;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3900(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 2193
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 2182
    const-string v0, "WfdPickerActivity"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-void
.end method
