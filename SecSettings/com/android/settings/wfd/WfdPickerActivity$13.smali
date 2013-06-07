.class Lcom/android/settings/wfd/WfdPickerActivity$13;
.super Landroid/os/CountDownTimer;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2021
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3700(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 2029
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .parameter "millisUntilFinished"

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3110(Lcom/android/settings/wfd/WfdPickerActivity;)I

    .line 2024
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan tick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I
    invoke-static {v2}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3100(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    return-void
.end method
