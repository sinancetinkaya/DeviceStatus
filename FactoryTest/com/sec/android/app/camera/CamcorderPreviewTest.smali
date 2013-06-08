.class public Lcom/sec/android/app/camera/CamcorderPreviewTest;
.super Landroid/app/Activity;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;,
        Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;,
        Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;,
        Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;
    }
.end annotation


# static fields
.field protected static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final REQUEST_CAMCORDER_PREVIEW_TEST:I

.field private bSentAck:Z

.field private camcorderpreview:[[I

.field private cameraType:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

.field private mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurResolution:I

.field private mCurrentTime:J

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mIsPressedBackkey:Z

.field private mIsRecordingStarted:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field private mPreviewCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;

.field private mPreviewing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

.field private mShutterCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;

.field mStartCheck:Ljava/lang/Runnable;

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

.field private mStopCamera:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mVideoRecordingTimeInMiliSecond:J

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mchkopencamera:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const-string v0, "CamcorderPreviewTest"

    sput-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->REQUEST_CAMCORDER_PREVIEW_TEST:I

    .line 94
    sget-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    .line 95
    iput v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    .line 98
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest$MainHandler;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;Lcom/sec/android/app/camera/CamcorderPreviewTest$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    .line 101
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    .line 105
    iput-wide v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentTime:J

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mchkopencamera:Z

    .line 110
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;Lcom/sec/android/app/camera/CamcorderPreviewTest$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ShutterCallback;

    .line 113
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsRecordingStarted:Z

    .line 114
    iput-wide v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mVideoRecordingTimeInMiliSecond:J

    .line 120
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 121
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartRecordingThread:Ljava/lang/Thread;

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    .line 125
    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    .line 128
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->bSentAck:Z

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopCamera:Z

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    .line 132
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    .line 793
    new-instance v0, Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/framework/CameraSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

    .line 953
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$4;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartCheck:Ljava/lang/Runnable;

    .line 1015
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$6;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1157
    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$7;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsRecordingStarted:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mchkopencamera:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/CamcorderPreviewTest;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CamcorderPreviewTest;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->bSentAck:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopCamera:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderPreviewTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderPreviewTest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->initializeMediaRecorder()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/media/MediaRecorder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/CamcorderPreviewTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CamcorderPreviewTest;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/CamcorderPreviewTest;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method private cleanupEmptyFile()V
    .registers 6

    .prologue
    .line 629
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 630
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 634
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    .line 637
    .end local v0           #f:Ljava/io/File;
    :cond_1e
    return-void
.end method

.method private cleanupTempFile()V
    .registers 3

    .prologue
    .line 617
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 621
    :cond_f
    return-void
.end method

.method private closeCamera()V
    .registers 3

    .prologue
    .line 939
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_13

    .line 941
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    .line 944
    :cond_13
    return-void
.end method

.method private createVideoPath()V
    .registers 20

    .prologue
    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 570
    .local v4, dateTaken:J
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 572
    .local v2, cameraDirPath:Ljava/lang/String;
    const-string v7, ".mp4"

    .line 573
    .local v7, extension:Ljava/lang/String;
    const-string v13, "video/mp4"

    .line 575
    .local v13, mimeType:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, cameraDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 577
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 578
    .local v3, date:Ljava/util/Date;
    const-string v16, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 579
    .local v12, filepart:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, filename:Ljava/lang/String;
    move-object v14, v12

    .line 581
    .local v14, title:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, displayName:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v8, f:Ljava/io/File;
    const/4 v10, 0x0

    .line 586
    .local v10, filenumber:I
    :goto_60
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_e1

    .line 587
    sget-object v16, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Duplicated file name found: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v3, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 589
    const-string v16, "yyyyMMdd_kkmmss"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 590
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    add-int/lit8 v11, v10, 0x1

    .end local v10           #filenumber:I
    .local v11, filenumber:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 591
    move-object v14, v12

    .line 592
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 594
    new-instance v8, Ljava/io/File;

    .end local v8           #f:Ljava/io/File;
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v8       #f:Ljava/io/File;
    move v10, v11

    .end local v11           #filenumber:I
    .restart local v10       #filenumber:I
    goto :goto_60

    .line 597
    :cond_e1
    new-instance v15, Landroid/content/ContentValues;

    const/16 v16, 0x7

    invoke-direct/range {v15 .. v16}, Landroid/content/ContentValues;-><init>(I)V

    .line 599
    .local v15, values:Landroid/content/ContentValues;
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v16, "_display_name"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v16, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 602
    const-string v16, "mime_type"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v16, "_data"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    .line 607
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 608
    return-void
.end method

.method private dialogErrorPopup(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 989
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "dialogErrorPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 993
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    const-string v0, "com.android.samsungtest.CAMERA_BAD"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V

    .line 995
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mchkopencamera:Z

    if-nez v0, :cond_50

    .line 996
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 997
    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 999
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1000
    const v1, 0x7f070001

    new-instance v2, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1008
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1009
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1012
    :cond_50
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mchkopencamera:Z

    .line 1013
    return-void
.end method

.method private getTempFileName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 624
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 625
    .local v0, cameraDirPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initializeMediaRecorder()V
    .registers 14

    .prologue
    const v12, 0xbb80

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 238
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "initializeRecorder"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_13

    .line 371
    :goto_12
    return-void

    .line 245
    :cond_13
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 246
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 247
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 249
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 252
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 254
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v10}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x7530

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_e6

    .line 262
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 267
    :goto_52
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->createVideoPath()V

    .line 268
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 275
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v6, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v5, v5, v6

    aget v5, v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v7, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v6, v6, v7

    aget v6, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 278
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v9

    const/16 v5, 0x780

    if-ne v4, v5, :cond_f4

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v10

    const/16 v5, 0x438

    if-ne v4, v5, :cond_f4

    .line 280
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1036640

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 281
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 282
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 283
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 284
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 285
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 320
    :cond_b6
    :goto_b6
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 325
    const-wide v2, 0xffffffffL

    .line 331
    .local v2, maxFileSize:J
    :try_start_c6
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v5, 0xffffffffL

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_d0} :catch_1eb

    .line 345
    :goto_d0
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_d9

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v9}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 348
    :cond_d9
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_e2

    .line 350
    :try_start_dd
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_1fa

    .line 370
    :cond_e2
    :goto_e2
    iput-boolean v9, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    goto/16 :goto_12

    .line 264
    .end local v2           #maxFileSize:J
    :cond_e6
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->createVideoPath()V

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getTempFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_52

    .line 286
    :cond_f4
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v9

    const/16 v5, 0x500

    if-ne v4, v5, :cond_131

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v10

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_131

    .line 288
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0xb71b00

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 289
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 290
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 291
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 292
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 293
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_b6

    .line 294
    :cond_131
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v9

    const/16 v5, 0x2d0

    if-ne v4, v5, :cond_16f

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v10

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_16f

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x34a0a8

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 297
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 298
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 299
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 301
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_b6

    .line 302
    :cond_16f
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v9

    const/16 v5, 0x280

    if-ne v4, v5, :cond_1ad

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v10

    const/16 v5, 0x1e0

    if-ne v4, v5, :cond_1ad

    .line 304
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x2ef770

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 305
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 306
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 307
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 308
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 309
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_b6

    .line 310
    :cond_1ad
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v9

    const/16 v5, 0x140

    if-ne v4, v5, :cond_b6

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v4, v4, v5

    aget v4, v4, v10

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_b6

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0xbb418

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 313
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 314
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 315
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 316
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_b6

    .line 332
    .restart local v2       #maxFileSize:J
    :catch_1eb
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    goto/16 :goto_d0

    .line 351
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1fa
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStopVideoRecordingSync()V

    .line 359
    :try_start_20a
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_20f
    .catch Ljava/lang/Throwable; {:try_start_20a .. :try_end_20f} :catch_213

    .line 366
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    goto/16 :goto_e2

    .line 360
    :catch_213
    move-exception v1

    .line 361
    .local v1, ex:Ljava/lang/Throwable;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "exception while startPreview"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    const v4, 0x7f070009

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    goto/16 :goto_12
.end method

.method private registerVideo()V
    .registers 10

    .prologue
    .line 415
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "registerVideo"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v4, :cond_81

    .line 418
    const-string v4, "content://media/external/video/media"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 419
    .local v3, videoTable:Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_size"

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "duration"

    iget-wide v6, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "resolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v8, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v8, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v1, 0x0

    .line 429
    .local v1, mCurrentVideoUri:Landroid/net/Uri;
    :try_start_6d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6d .. :try_end_81} :catch_85
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6d .. :try_end_81} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_6d .. :try_end_81} :catch_97

    .line 442
    .end local v1           #mCurrentVideoUri:Landroid/net/Uri;
    .end local v3           #videoTable:Landroid/net/Uri;
    :cond_81
    :goto_81
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 443
    return-void

    .line 432
    .restart local v1       #mCurrentVideoUri:Landroid/net/Uri;
    .restart local v3       #videoTable:Landroid/net/Uri;
    :catch_85
    move-exception v2

    .line 433
    .local v2, sfe:Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "Not enough space in database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 434
    .end local v2           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_8e
    move-exception v0

    .line 435
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "insert failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 436
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_97
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v4, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v5, "insert failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method private releaseMediaRecorder()V
    .registers 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_14

    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cleanupEmptyFile()V

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 380
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1d

    .line 382
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 388
    :cond_1d
    :goto_1d
    return-void

    .line 383
    :catch_1e
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "mCameraDevice.reconnect() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private renameTempFile()V
    .registers 4

    .prologue
    .line 611
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 614
    return-void
.end method

.method private sendBroadCastAck(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 947
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadCastAck - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->bSentAck:Z

    .line 951
    return-void
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    if-eqz v0, :cond_13

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1153
    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    .line 1154
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-void
.end method


# virtual methods
.method public doPrepareVideoRecordingAsync()V
    .registers 3

    .prologue
    .line 395
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "doPrepareVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1c

    .line 398
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "mMediaRecorder is already initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "Releasing mMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    .line 402
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_38

    .line 403
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderPreviewTest$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$1;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 412
    :cond_38
    return-void
.end method

.method public doStartVideoRecordingAsync()V
    .registers 3

    .prologue
    .line 460
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "doStartVideoRecordingAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mVideoRecordingTimeInMiliSecond:J

    .line 465
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_44

    .line 472
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 475
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "start video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    if-nez v0, :cond_43

    .line 478
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$2;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartRecordingThread:Ljava/lang/Thread;

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 517
    :cond_43
    return-void

    .line 468
    :catch_44
    move-exception v0

    goto :goto_14
.end method

.method public doStopVideoRecordingSync()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 520
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "doStopVideoRecordingSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->isRecording()Z

    move-result v1

    if-nez v1, :cond_10

    .line 563
    :goto_f
    return-void

    .line 525
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 528
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "Stopping VideoRecording..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_66

    .line 532
    :try_start_2a
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_3b} :catch_72

    .line 548
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->renameTempFile()V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoFilename:Ljava/lang/String;

    .line 550
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting current video filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    .line 552
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsRecordingStarted:Z

    .line 553
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    .line 554
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->registerVideo()V

    .line 557
    :cond_66
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    .line 558
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 562
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "Stopping VideoRecording is completed!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 535
    :catch_72
    move-exception v0

    .line 536
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMediaRecorderRecording:Z

    .line 538
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->releaseMediaRecorder()V

    .line 540
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cleanupTempFile()V

    .line 541
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFilename:Ljava/lang/String;

    .line 542
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    goto/16 :goto_f
.end method

.method protected findBestFpsRange(Landroid/hardware/Camera$Parameters;II)[I
    .registers 14
    .parameter "parameters"
    .parameter "requestedMinFps"
    .parameter "requestedMaxFps"

    .prologue
    .line 641
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requsted fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v1, 0x0

    .line 644
    .local v1, MIN_IDX:I
    const/4 v0, 0x1

    .line 645
    .local v0, MAX_IDX:I
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 646
    .local v3, fpsRange:[I
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 648
    .local v2, bestFpsRange:[I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 650
    .local v4, fpsRangeList:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-nez v4, :cond_39

    .line 651
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v8, "supported preview fps range is null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v3, 0x0

    .line 709
    .end local v3           #fpsRange:[I
    :goto_38
    return-object v3

    .line 655
    .restart local v3       #fpsRange:[I
    :cond_39
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, i:I
    :goto_3f
    if-ltz v5, :cond_196

    .line 656
    const/4 v8, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 657
    const/4 v8, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 659
    const/4 v7, 0x1

    aget v7, v3, v7

    if-ne p3, v7, :cond_162

    .line 660
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_8d

    .line 662
    move-object v2, v3

    .line 663
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 666
    :cond_8d
    if-nez v5, :cond_b9

    .line 668
    move-object v2, v3

    .line 669
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 674
    :cond_b9
    move v6, v5

    .local v6, j:I
    :goto_ba
    if-ltz v6, :cond_137

    .line 675
    const/4 v8, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x0

    aget v7, v7, v9

    aput v7, v3, v8

    .line 676
    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v9, 0x1

    aget v7, v7, v9

    aput v7, v3, v8

    .line 678
    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne p2, v7, :cond_104

    .line 680
    move-object v2, v3

    .line 681
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 684
    :cond_104
    const/4 v7, 0x0

    aget v7, v3, v7

    if-le p2, v7, :cond_134

    .line 685
    move-object v2, v3

    .line 686
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 674
    :cond_134
    add-int/lit8 v6, v6, -0x1

    goto :goto_ba

    .line 693
    :cond_137
    move-object v2, v3

    .line 694
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 698
    .end local v6           #j:I
    :cond_162
    const/4 v7, 0x1

    aget v7, v3, v7

    if-le p3, v7, :cond_192

    .line 699
    move-object v2, v3

    .line 700
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 655
    :cond_192
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3f

    .line 707
    :cond_196
    move-object v2, v3

    .line 708
    sget-object v7, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find best fps range : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

    return-object v0
.end method

.method public isRecording()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsRecordingStarted:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 714
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    .line 730
    sget-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    .line 731
    iput v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    .line 733
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest$3;-><init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 763
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 765
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 766
    const v2, 0x680080

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 767
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->setContentView(I)V

    .line 769
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    aget-object v3, v3, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VideoPreview;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 774
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 775
    invoke-interface {v0, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 777
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/framework/ShutterButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/framework/ShutterButton;->setOnShutterButtonListener(Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;)V

    .line 780
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/framework/ShutterButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/framework/ShutterButton;->setOnShutterButtonListener(Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/framework/ShutterButton;->setVisibility(I)V

    .line 788
    :try_start_bd
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c0} :catch_c1

    .line 791
    :goto_c0
    return-void

    .line 789
    :catch_c1
    move-exception v0

    goto :goto_c0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 182
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder onError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const v0, 0x7f07000a

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    .line 185
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 7
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 188
    const/16 v1, 0x320

    if-ne p2, v1, :cond_1f

    .line 189
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStopVideoRecordingSync()V

    .line 191
    const-string v1, "com.android.samsungtest.CAMCORDER_GOOD"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->setResult(ILandroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->finish()V

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    :goto_1e
    return-void

    .line 195
    :cond_1f
    const/16 v1, 0x321

    if-ne p2, v1, :cond_1e

    .line 196
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f070009

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1031
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "onKeyDown"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    sparse-switch p1, :sswitch_data_198

    .line 1144
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    :sswitch_16
    move v0, v1

    .line 1034
    goto :goto_15

    .line 1038
    :sswitch_18
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    .line 1039
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    sget-object v2, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_5c

    .line 1040
    sget-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_38

    .line 1042
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->stopPreview()V

    .line 1043
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->closeCamera()V

    .line 1046
    :cond_38
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1047
    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v2, "ommision_test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    const-string v2, "torch_on"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1050
    const-string v2, "camcorder_preview_test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1053
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->setResult(ILandroid/content/Intent;)V

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->finish()V

    move v0, v1

    .line 1055
    goto :goto_15

    .line 1058
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_66

    .line 1059
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->stopPreview()V

    .line 1060
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->closeCamera()V

    .line 1063
    :cond_66
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v3, v3, v4

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    :try_start_99
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a1} :catch_fe

    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1078
    :try_start_c3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_ca} :catch_195
    .catch Ljava/lang/RuntimeException; {:try_start_c3 .. :try_end_ca} :catch_10c

    .line 1086
    :goto_ca
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12c

    .line 1090
    :try_start_d5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_dc} :catch_11c

    .line 1103
    :goto_dc
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "cam_mode"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :try_start_ed
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_f4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_f4} :catch_192
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f4} :catch_142

    .line 1117
    :goto_f4
    :try_start_f4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_f9} :catch_152

    .line 1123
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    move v0, v1

    .line 1125
    goto/16 :goto_15

    .line 1068
    :catch_fe
    move-exception v0

    .line 1069
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    move v0, v1

    .line 1071
    goto/16 :goto_15

    .line 1081
    :catch_10c
    move-exception v0

    .line 1082
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "setParameter fail"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 1084
    goto/16 :goto_15

    .line 1091
    :catch_11c
    move-exception v0

    .line 1092
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_129

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    :cond_129
    move v0, v1

    .line 1096
    goto/16 :goto_15

    .line 1099
    :cond_12c
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_dc

    .line 1110
    :catch_142
    move-exception v0

    .line 1111
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "setParameter fail"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 1113
    goto/16 :goto_15

    .line 1118
    :catch_152
    move-exception v0

    .line 1119
    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v3, "exception while startPreview"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1120
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    move v0, v1

    .line 1121
    goto/16 :goto_15

    .line 1128
    :sswitch_160
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    if-nez v0, :cond_176

    .line 1129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentTime:J

    .line 1131
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    .line 1132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->startTimer()V

    move v0, v1

    .line 1133
    goto/16 :goto_15

    .line 1135
    :cond_176
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mIsPressedBackkey:Z

    .line 1136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurrentTime:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 1138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1139
    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_11

    .line 1108
    :catch_192
    move-exception v0

    goto/16 :goto_f4

    .line 1079
    :catch_195
    move-exception v0

    goto/16 :goto_ca

    .line 1032
    :sswitch_data_198
    .sparse-switch
        0x4 -> :sswitch_160
        0x18 -> :sswitch_18
        0x19 -> :sswitch_16
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1177
    packed-switch p1, :pswitch_data_a

    .line 1183
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_8
    return v0

    .line 1177
    nop

    :pswitch_data_a
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 906
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_22

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 910
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "releaseWakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 913
    :cond_20
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 916
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3a

    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->stopPreview()V

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 923
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    .line 927
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3f} :catch_4f

    .line 931
    :goto_3f
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopCamera:Z

    if-eqz v0, :cond_4b

    .line 932
    const-string v0, "com.android.samsungtest.CAMERA_STOP_ACK"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->sendBroadCastAck(Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopCamera:Z

    .line 935
    :cond_4b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 936
    return-void

    .line 928
    :catch_4f
    move-exception v0

    goto :goto_3f
.end method

.method public onResume()V
    .registers 9

    .prologue
    const v7, 0x7f070009

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 801
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 802
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->bSentAck:Z

    .line 803
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mStopCamera:Z

    .line 805
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 806
    const v1, 0x3000001a

    sget-object v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 810
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    .line 813
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 814
    const-string v1, "com.android.samsungtest.CameraStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    if-nez v0, :cond_51

    .line 818
    sget-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    .line 819
    sget-object v0, Lcom/sec/android/app/camera/Feature;->TEST_RESOLUTION:[[I

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    .line 822
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_8d

    .line 824
    :try_start_55
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_f8

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 835
    :try_start_7f
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_86
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_86} :catch_165
    .catch Ljava/lang/RuntimeException; {:try_start_7f .. :try_end_86} :catch_104

    .line 843
    :goto_86
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 846
    :cond_8d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_120

    .line 848
    :try_start_91
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_98} :catch_112

    .line 862
    :goto_98
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "cam_mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x3a98

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->findBestFpsRange(Landroid/hardware/Camera$Parameters;II)[I

    move-result-object v0

    .line 868
    if-eqz v0, :cond_be

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    aget v2, v0, v4

    aget v0, v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 873
    :cond_be
    :try_start_be
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c5} :catch_162
    .catch Ljava/lang/RuntimeException; {:try_start_be .. :try_end_c5} :catch_137

    .line 882
    :goto_c5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 883
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->cameraType:I

    if-nez v0, :cond_145

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "flash-mode is FLASH_TORCH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_e2
    :goto_e2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 894
    :try_start_e9
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ee} :catch_156

    .line 900
    iput-boolean v5, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewCallback:Lcom/sec/android/app/camera/CamcorderPreviewTest$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 902
    :cond_f7
    :goto_f7
    return-void

    .line 825
    :catch_f8
    move-exception v0

    .line 826
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "service cannot connect. critical exception occured."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    goto :goto_f7

    .line 838
    :catch_104
    move-exception v0

    .line 839
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "setParameter fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f7

    .line 849
    :catch_112
    move-exception v0

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_f7

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_f7

    .line 857
    :cond_120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v1, v1, v2

    aget v1, v1, v4

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v2, v2, v3

    aget v2, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/VideoPreview;->setAspectRatio(II)V

    goto/16 :goto_98

    .line 876
    :catch_137
    move-exception v0

    .line 877
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "setParameter fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f7

    .line 887
    :cond_145
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "flash-mode is FLASH_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 895
    :catch_156
    move-exception v0

    .line 896
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "exception while startPreview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    goto :goto_f7

    .line 874
    :catch_162
    move-exception v0

    goto/16 :goto_c5

    .line 836
    :catch_165
    move-exception v0

    goto/16 :goto_86
.end method

.method public onShutterButtonClick(Lcom/sec/android/app/camera/framework/ShutterButton;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "call onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    if-eqz v0, :cond_c

    .line 235
    :goto_b
    return-void

    .line 217
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/camera/framework/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    goto :goto_b

    .line 219
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->isRecording()Z

    move-result v0

    if-nez v0, :cond_21

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doPrepareVideoRecordingAsync()V

    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStartVideoRecordingAsync()V

    goto :goto_b

    .line 224
    :cond_21
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "shutter button is visible wrongly in recording state!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 228
    :pswitch_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->doStopVideoRecordingSync()V

    goto :goto_b

    .line 231
    :cond_33
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "stop button is visible wrongly in recording state!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 217
    nop

    :pswitch_data_3c
    .packed-switch 0x7f090002
        :pswitch_14
        :pswitch_29
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V
    .registers 5
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 201
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "call onShutterButtonFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    if-eqz v0, :cond_c

    .line 210
    :goto_b
    return-void

    .line 205
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/camera/framework/ShutterButton;->getId()I

    goto :goto_b
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1174
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1198
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    if-ge p3, p4, :cond_b

    .line 1205
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/VideoPreview;->setVisibility(I)V

    .line 1207
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPausing:Z

    if-eqz v0, :cond_1c

    .line 1208
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "surfaceChanged - mPausing == true, return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_1b
    :goto_1b
    return-void

    .line 1212
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3d

    .line 1213
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->camcorderpreview:[[I

    iget v3, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCurResolution:I

    aget-object v2, v2, v3

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1219
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_44} :catch_87
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_44} :catch_53

    .line 1229
    :goto_44
    :try_start_44
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4b} :catch_63

    .line 1239
    :try_start_4b
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_50} :catch_78

    .line 1245
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mPreviewing:Z

    goto :goto_1b

    .line 1222
    :catch_53
    move-exception v0

    .line 1223
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "setParameter fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1b

    .line 1230
    :catch_63
    move-exception v0

    .line 1231
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "mCameraDevice.setPreviewDisplay exception!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1b

    .line 1233
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_1b

    .line 1240
    :catch_78
    move-exception v0

    .line 1241
    sget-object v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v2, "exception while startPreview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1242
    const v0, 0x7f070009

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V

    goto :goto_1b

    .line 1220
    :catch_87
    move-exception v0

    goto :goto_44
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 1187
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1189
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 1192
    sget-object v0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->TAG:Ljava/lang/String;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->stopPreview()V

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1195
    return-void
.end method
