.class Lcom/sec/android/app/camerafirmware/CameraFirmware$5;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;
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
    .line 705
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog1"
    .parameter "which"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->startUpdateThread()V

    .line 711
    return-void
.end method
