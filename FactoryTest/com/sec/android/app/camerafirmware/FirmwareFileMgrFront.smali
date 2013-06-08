.class public Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;
.super Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;
.source "FirmwareFileMgrFront.java"


# static fields
.field protected static final CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;-><init>()V

    .line 28
    const-string v0, "FirmwareFileMgrFront"

    const-string v1, "FirmwareFileMgrFront"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v0, "/sys/class/camera/front/front_camfw"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;->CAMERA_FIRMWARE_INFO_FILE:Ljava/lang/String;

    .line 30
    const-string v0, "/sys/class/camera/front/front_camtype"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;->CAMERA_FIRMWARE_TYPE_FILE:Ljava/lang/String;

    .line 31
    return-void
.end method
