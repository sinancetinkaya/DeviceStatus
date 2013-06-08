.class Lcom/sec/android/app/camerafirmware/CameraFirmware$1;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 142
    const-string v2, "CameraFirmware"

    const-string v3, "Button Clicked "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_3be

    .line 316
    :goto_f
    return-void

    .line 146
    :pswitch_10
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 147
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 149
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_2e

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 153
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear Camera\nCam FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Phone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, toast_string:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nFront Camera\nCam&Phone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 173
    .end local v1           #toast_string:Ljava/lang/String;
    :pswitch_a6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090009

    if-ne v2, v3, :cond_ed

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 178
    :goto_b7
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_cc

    .line 180
    :try_start_bd
    const-string v2, "CameraFirmware"

    const-string v3, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_cc} :catch_3bb

    .line 190
    :cond_cc
    :goto_cc
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->ChkUserFirmwareFile()Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const v4, 0x7f070010

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$200(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$102(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$100(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_f

    .line 176
    :cond_ed
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    goto :goto_b7

    .line 196
    :cond_f6
    :try_start_f6
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->isSameVendor()Z
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 197
    const-string v2, "CameraFirmware"

    const-string v3, "valid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->IsNewFirmwareDate()I

    move-result v2

    packed-switch v2, :pswitch_data_3d4

    goto/16 :goto_f

    .line 225
    :pswitch_110
    const-string v2, "CameraFirmware"

    const-string v3, "This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$400(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_11f} :catch_121

    goto/16 :goto_f

    .line 233
    :catch_121
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraFirmware"

    const-string v3, "Something goes wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const v3, 0x7f07000e

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$400(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)V

    goto/16 :goto_f

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_133
    :try_start_133
    const-string v2, "CameraFirmware"

    const-string v3, "Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_f

    .line 211
    :pswitch_14f
    const-string v2, "CameraFirmware"

    const-string v3, "Same date.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->IsNewFirmwareVersion()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 213
    const-string v2, "CameraFirmware"

    const-string v3, "Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 218
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_f

    .line 220
    :cond_17a
    const-string v2, "CameraFirmware"

    const-string v3, "This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$400(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)V

    goto/16 :goto_f

    .line 230
    :cond_18b
    const-string v2, "CameraFirmware"

    const-string v3, "Invalid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    const v3, 0x7f07000d

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$400(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)V
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_19a} :catch_121

    goto/16 :goto_f

    .line 242
    :pswitch_19c
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_1ad

    .line 243
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 245
    :cond_1ad
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_1ba

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 249
    :cond_1ba
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear Camera\n ISP Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getISPVer1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .restart local v1       #toast_string:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nFront Camera\n ISP Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getISPVer1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 261
    .end local v1           #toast_string:Ljava/lang/String;
    :pswitch_21a
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_22b

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 265
    :cond_22b
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rear\n( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, v6, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, v6, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )\n\nFront\n( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, v6, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER_FRONT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v6, v6, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG_FRONT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 270
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 274
    :pswitch_2a0
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_2b1

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 277
    :cond_2b1
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_2be

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 281
    :cond_2be
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear Camera\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCAMFWCalAF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCAMFWCalSEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1       #toast_string:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nFront Camera\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCAMFWCalAF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCAMFWCalSEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 296
    .end local v1           #toast_string:Ljava/lang/String;
    :pswitch_342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09000e

    if-ne v2, v3, :cond_368

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 301
    :goto_353
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->showUpdateProgress(Z)V

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_f

    .line 299
    :cond_368
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    goto :goto_353

    .line 306
    :pswitch_371
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_382

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 309
    :cond_382
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\nRear Camera\nISP Core Voltage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getISPVoltage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1       #toast_string:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 314
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 184
    .end local v1           #toast_string:Ljava/lang/String;
    :catch_3bb
    move-exception v2

    goto/16 :goto_cc

    .line 144
    :pswitch_data_3be
    .packed-switch 0x7f090008
        :pswitch_10
        :pswitch_a6
        :pswitch_a6
        :pswitch_19c
        :pswitch_21a
        :pswitch_2a0
        :pswitch_342
        :pswitch_342
        :pswitch_371
    .end packed-switch

    .line 199
    :pswitch_data_3d4
    .packed-switch -0x1
        :pswitch_110
        :pswitch_14f
        :pswitch_133
    .end packed-switch
.end method
