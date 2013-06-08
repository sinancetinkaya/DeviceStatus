.class Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware_user;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 54
    const-string v2, "CameraFirmware_user"

    const-string v3, "Button Clicked "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, toast_text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_2e2

    .line 210
    :goto_10
    return-void

    .line 59
    :pswitch_11
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 62
    :cond_22
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_37

    .line 64
    :try_start_28
    const-string v2, "CameraFirmware_user"

    const-string v3, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_37} :catch_2df

    .line 72
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear\nCam FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

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

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nFront\nCam FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

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

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 87
    :pswitch_c7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090012

    if-ne v2, v3, :cond_13c

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 92
    :goto_d8
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_ed

    .line 94
    :try_start_de
    const-string v2, "CameraFirmware_user"

    const-string v3, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_ed
    .catch Ljava/lang/IllegalArgumentException; {:try_start_de .. :try_end_ed} :catch_2dc

    .line 105
    :cond_ed
    :goto_ed
    :try_start_ed
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->ChkUserFirmwareFile()Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 108
    const-string v2, "CameraFirmware_user"

    const-string v3, "valid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->IsNewFirmwareDate()I

    move-result v2

    packed-switch v2, :pswitch_data_2ee

    goto/16 :goto_10

    .line 128
    :pswitch_119
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_128} :catch_12a

    goto/16 :goto_10

    .line 177
    :catch_12a
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraFirmware_user"

    const-string v3, "Something goes wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000e

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_10

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    :cond_13c
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    goto :goto_d8

    .line 112
    :pswitch_145
    :try_start_145
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v4, 0x7f070010

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$200(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$102(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 114
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$100(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_10

    .line 117
    :pswitch_165
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: Same date.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->IsNewFirmwareVersion()Z

    move-result v2

    if-eqz v2, :cond_194

    .line 119
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v4, 0x7f070010

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v3, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$200(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$102(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$100(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_10

    .line 123
    :cond_194
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_10

    .line 133
    :cond_1a5
    const-string v2, "CameraFirmware_user"

    const-string v3, "SDCARD: Invalid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000d

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_10

    .line 139
    :cond_1b6
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_243

    .line 140
    const-string v2, "CameraFirmware_user"

    const-string v3, "valid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->IsNewFirmwareDate()I

    move-result v2

    packed-switch v2, :pswitch_data_2f8

    goto/16 :goto_10

    .line 168
    :pswitch_1da
    const-string v2, "CameraFirmware_user"

    const-string v3, "This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_10

    .line 144
    :pswitch_1eb
    const-string v2, "CameraFirmware_user"

    const-string v3, "Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->showUpdateProgress()V

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->startUpdateThread()V

    goto/16 :goto_10

    .line 154
    :pswitch_207
    const-string v2, "CameraFirmware_user"

    const-string v3, "Same date.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->IsNewFirmwareVersion()Z

    move-result v2

    if-eqz v2, :cond_232

    .line 156
    const-string v2, "CameraFirmware_user"

    const-string v3, "Updating New Firmwareversion..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->showUpdateProgress()V

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->startUpdateThread()V

    goto/16 :goto_10

    .line 163
    :cond_232
    const-string v2, "CameraFirmware_user"

    const-string v3, "This is the latest version.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000f

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_10

    .line 173
    :cond_243
    const-string v2, "CameraFirmware_user"

    const-string v3, "Invalid vendor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    const v3, 0x7f07000d

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_252} :catch_12a

    goto/16 :goto_10

    .line 185
    :pswitch_254
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_265

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 188
    :cond_265
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v2, :cond_27a

    .line 190
    :try_start_26b
    const-string v2, "CameraFirmware_user"

    const-string v3, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v2, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_27a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26b .. :try_end_27a} :catch_2da

    .line 199
    :cond_27a
    :goto_27a
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rear\nPhone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    iput-object v3, v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nFront\nPhone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    iget-object v3, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_10

    .line 194
    :catch_2da
    move-exception v2

    goto :goto_27a

    .line 98
    :catch_2dc
    move-exception v2

    goto/16 :goto_ed

    .line 68
    :catch_2df
    move-exception v2

    goto/16 :goto_37

    .line 57
    :pswitch_data_2e2
    .packed-switch 0x7f090011
        :pswitch_11
        :pswitch_c7
        :pswitch_c7
        :pswitch_254
    .end packed-switch

    .line 110
    :pswitch_data_2ee
    .packed-switch -0x1
        :pswitch_119
        :pswitch_165
        :pswitch_145
    .end packed-switch

    .line 142
    :pswitch_data_2f8
    .packed-switch -0x1
        :pswitch_1da
        :pswitch_207
        :pswitch_1eb
    .end packed-switch
.end method
