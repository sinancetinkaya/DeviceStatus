.class public Lcom/sec/android/app/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$ImageCapture;,
        Lcom/sec/android/app/camera/Camera$AutoFocusCallback;,
        Lcom/sec/android/app/camera/Camera$PreviewCallback;,
        Lcom/sec/android/app/camera/Camera$ErrorCallback;,
        Lcom/sec/android/app/camera/Camera$JpegPictureCallback;,
        Lcom/sec/android/app/camera/Camera$RawPictureCallback;,
        Lcom/sec/android/app/camera/Camera$ShutterCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final DIRECTORY_CAMERA_DATA:Ljava/lang/String;

.field private static final DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

.field private static mContentResolver:Landroid/content/ContentResolver;


# instance fields
.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private final FINISH_CAMCORDER_PREVIEW_TEST:I

.field private final FINISH_POSTVIEW_TEST:I

.field private final IMEI:Ljava/lang/String;

.field private final REQUEST_CAMCORDER_PREVIEW_TEST:I

.field private final REQUEST_POSTVIEW_TEST:I

.field private bCheckDTP:Z

.field private bDoneDTP:Z

.field private bEnablePreviewCb:Z

.field private bSentAck:Z

.field private bUseSdcard:Z

.field private cameraType:I

.field public capturedData:[B

.field private cs:Lcom/sec/android/app/camera/CameraStorage;

.field private filePath:Ljava/lang/String;

.field private mAF_Fail_Count:I

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/Camera$AutoFocusCallback;

.field private mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

.field private mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

.field private mCaptureStartTime:J

.field private mCurrentTime:J

.field mDatalineCheck:Ljava/lang/Runnable;

.field private mErrorCallback:Lcom/sec/android/app/camera/Camera$ErrorCallback;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mFinishCamcorderPreviewTest:Z

.field private mFinishPostViewTest:Z

.field private mFlashEnable:I

.field private mFocusBlinkAnimation:Landroid/view/animation/Animation;

.field private mFocusCallbackTime:J

.field private mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

.field private mIsCaptureEnable:Z

.field private mIsPressedBackkey:Z

.field private mJpegPictureCallbackTime:J

.field private mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field private mMainHandler:Landroid/os/Handler;

.field protected mNumberOfCameras:I

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field private mOriginalViewFinderHeight:I

.field private mOriginalViewFinderWidth:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPreviewCallback:Lcom/sec/android/app/camera/Camera$PreviewCallback;

.field private mPreviewing:Z

.field private mRawPictureCallback:Lcom/sec/android/app/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutterBtnlock:Z

.field private mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

.field private mShutterCallback:Lcom/sec/android/app/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field mStartCheck:Ljava/lang/Runnable;

.field private mStatus:I

.field private mStopCamera:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mViewFinderHeight:I

.field private mViewFinderWidth:I

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomValue:I

.field private mchkopencamera:Z

.field private ommisionTest:Z

.field private testType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_DATA:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 101
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    .line 102
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->bUseSdcard:Z

    .line 103
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    .line 104
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z

    .line 111
    const-string v0, "ril.IMEI"

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->IMEI:Ljava/lang/String;

    .line 112
    const-string v0, "357858010034783"

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->DEFAULT_IMEI:Ljava/lang/String;

    .line 117
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 120
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    .line 121
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/sec/android/app/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camera$ShutterCallback;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterCallback:Lcom/sec/android/app/camera/Camera$ShutterCallback;

    .line 133
    new-instance v0, Lcom/sec/android/app/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camera$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/camera/Camera$RawPictureCallback;

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camera$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAutoFocusCallback:Lcom/sec/android/app/camera/Camera$AutoFocusCallback;

    .line 135
    new-instance v0, Lcom/sec/android/app/camera/Camera$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$ErrorCallback;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorCallback:Lcom/sec/android/app/camera/Camera$ErrorCallback;

    .line 136
    new-instance v0, Lcom/sec/android/app/camera/Camera$PreviewCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$PreviewCallback;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewCallback:Lcom/sec/android/app/camera/Camera$PreviewCallback;

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bSentAck:Z

    .line 148
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mStopCamera:Z

    .line 150
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    .line 158
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    .line 159
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    .line 160
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    .line 161
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    .line 162
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    .line 163
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    .line 164
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishPostViewTest:Z

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    .line 167
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mOpenCameraThread:Ljava/lang/Thread;

    .line 170
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    .line 174
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mCurrentTime:J

    .line 178
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    .line 181
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mchkopencamera:Z

    .line 184
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I

    .line 187
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->REQUEST_CAMCORDER_PREVIEW_TEST:I

    .line 188
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->FINISH_CAMCORDER_PREVIEW_TEST:I

    .line 191
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->REQUEST_POSTVIEW_TEST:I

    .line 192
    iput v6, p0, Lcom/sec/android/app/camera/Camera;->FINISH_POSTVIEW_TEST:I

    .line 195
    new-instance v0, Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/framework/CameraSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

    .line 206
    iput-object v3, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 207
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->mLastOrientation:I

    .line 208
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->mOrientationOnTake:I

    .line 211
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1476
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    .line 1484
    new-instance v0, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    .line 1801
    new-instance v0, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sec/android/app/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sec/android/app/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishPostViewTest:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mStopCamera:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sec/android/app/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraStorage;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/CameraStorage;)Lcom/sec/android/app/camera/CameraStorage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bUseSdcard:Z

    return v0
.end method

.method static synthetic access$2600(J)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 95
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/Camera;[B)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->checkDataline([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bSentAck:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->sendBroadCastAck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I

    return p1
.end method

.method static synthetic access$3608(Lcom/sec/android/app/camera/Camera;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mAF_Fail_Count:I

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/sec/android/app/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ImageCapture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$4002(Lcom/sec/android/app/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->dialogFocusPopup()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/Camera;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/sec/android/app/camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/sec/android/app/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/sec/android/app/camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterCallback:Lcom/sec/android/app/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$RawPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mchkopencamera:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorCallback:Lcom/sec/android/app/camera/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/android/app/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setLastOrientation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Interface/Capturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Interface/Capturer;)Lcom/sec/android/app/camera/Interface/Capturer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->clearFocusState()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V

    return-void
.end method

.method private autoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v0, "testCamera"

    const-string v1, "call autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_27

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_27

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusStartTime:J

    .line 386
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    .line 387
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAutoFocusCallback:Lcom/sec/android/app/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 392
    :cond_27
    return-void
.end method

.method private checkDataline([B)Z
    .registers 8
    .parameter "data"

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, ins:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 782
    .local v1, sampleDTP:[B
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDataline - cameraType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 785
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 789
    :goto_2c
    const/4 v2, 0x0

    .line 791
    .local v2, size:I
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_45

    move-result v2

    .line 795
    :goto_31
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camera;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 797
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 787
    .end local v2           #size:I
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2c

    .line 792
    .restart local v2       #size:I
    :catch_45
    move-exception v3

    goto :goto_31
.end method

.method private clearFocusState()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    .line 341
    return-void
.end method

.method private closeCamera()V
    .registers 3

    .prologue
    .line 1119
    const-string v0, "testCamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1d

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    .line 1124
    const-string v0, "testCamera"

    const-string v1, "closeCamera : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_1d
    return-void
.end method

.method private static createName(J)Ljava/lang/String;
    .registers 3
    .parameter "dateTaken"

    .prologue
    .line 624
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dialogErrorPopup(I)V
    .registers 6
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 708
    const-string v1, "testCamera"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 711
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 712
    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 714
    const-string v1, "com.android.samsungtest.CAMERA_BAD"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->sendBroadCastAck(Ljava/lang/String;)V

    .line 715
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mchkopencamera:Z

    if-nez v1, :cond_57

    .line 716
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 720
    const v1, 0x7f070001

    new-instance v2, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 729
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 732
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_57
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mchkopencamera:Z

    .line 733
    return-void
.end method

.method private dialogFocusPopup()V
    .registers 4

    .prologue
    .line 2191
    const-string v0, "testCamera"

    const-string v1, "dialogFocusPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_55

    .line 2194
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2196
    const-string v0, "com.android.samsungtest.AUTOFOCUS_BAD"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadCastAck(Ljava/lang/String;)V

    .line 2198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2199
    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2200
    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2201
    const v1, 0x7f070001

    new-instance v2, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 2211
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2213
    :cond_55
    return-void
.end method

.method private doFocus(Z)V
    .registers 5
    .parameter "pressed"

    .prologue
    .line 344
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFocus - pressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setOrientationOnTake(I)V

    .line 349
    if-eqz p1, :cond_76

    .line 350
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-eqz v0, :cond_42

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6c

    .line 353
    :cond_42
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->getSupportedAutofocus()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_53

    .line 354
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->autoFocus()V

    .line 376
    :cond_52
    :goto_52
    return-void

    .line 355
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    if-eqz v0, :cond_64

    .line 356
    const-string v0, "testCamera"

    const-string v1, "AF not supported or preview not started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Interface/Capturer;->onSnap()V

    goto :goto_52

    .line 360
    :cond_64
    const-string v0, "testCamera"

    const-string v1, "CaptureObj NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 363
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    if-eqz v0, :cond_52

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Interface/Capturer;->onSnap()V

    goto :goto_52

    .line 368
    :cond_76
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_52

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_84

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 372
    :cond_84
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->clearFocusState()V

    .line 373
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V

    goto :goto_52
.end method

.method private doSnap()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setOrientationOnTake(I)V

    .line 430
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap()- mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v0, v3, :cond_2c

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Interface/Capturer;->onSnap()V

    .line 455
    :cond_2b
    :goto_2b
    return-void

    .line 434
    :cond_2c
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_45

    .line 436
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    if-eqz v0, :cond_3e

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Interface/Capturer;->onSnap()V

    .line 439
    :cond_3e
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->clearFocusState()V

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V

    goto :goto_2b

    .line 441
    :cond_45
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_52

    .line 442
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_FAIL : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 443
    :cond_52
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-ne v0, v3, :cond_61

    .line 447
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    .line 448
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUSING : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 449
    :cond_61
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-nez v0, :cond_2b

    .line 452
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_NOT_STARTED : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private ensureCameraDevice()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1143
    const-string v2, "testCamera"

    const-string v3, "ensureCameraDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_9b

    .line 1145
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureCameraDevice:Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :try_start_27
    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_a1

    .line 1155
    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {p0, v2, v3}, Lcom/sec/android/app/camera/Camera;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 1157
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1158
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "factorytest"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "cam_mode"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupportedFocusModes(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 1161
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1166
    :goto_6d
    const-string v2, "selftest"

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 1167
    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v2, v0, :cond_b8

    .line 1172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1182
    :goto_86
    :try_start_86
    const-string v2, "testCamera"

    const-string v3, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_94} :catch_e2
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_94} :catch_d0

    .line 1192
    :goto_94
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mErrorCallback:Lcom/sec/android/app/camera/Camera$ErrorCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1194
    :cond_9b
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_e0

    :goto_9f
    move v1, v0

    :goto_a0
    return v1

    .line 1149
    :catch_a1
    move-exception v0

    .line 1150
    const-string v0, "testCamera"

    const-string v2, "service cannot connect. critical exception occured."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const v0, 0x7f070009

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V

    goto :goto_a0

    .line 1163
    :cond_b0
    const-string v2, "testCamera"

    const-string v3, "not support focusmode"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 1175
    :cond_b8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_86

    .line 1178
    :cond_c4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/framework/CameraSettings;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_86

    .line 1186
    :catch_d0
    move-exception v0

    .line 1187
    const-string v0, "testCamera"

    const-string v2, "setParameter fail"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a0

    :cond_e0
    move v0, v1

    .line 1194
    goto :goto_9f

    .line 1184
    :catch_e2
    move-exception v2

    goto :goto_94
.end method

.method public static getAvailableSpaceSd()J
    .registers 10

    .prologue
    const-wide/16 v2, -0x1

    .line 598
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, state:Ljava/lang/String;
    const-string v6, "checking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 600
    const-wide/16 v2, -0x2

    .line 620
    :cond_10
    :goto_10
    return-wide v2

    .line 602
    :cond_11
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 606
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 608
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 613
    :try_start_2f
    new-instance v4, Landroid/os/StatFs;

    sget-object v6, Lcom/sec/android/app/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 614
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 615
    .local v2, space:J
    const-string v6, "testCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSpaceSd : space ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5a} :catch_5b

    goto :goto_10

    .line 617
    .end local v2           #space:J
    .end local v4           #stat:Landroid/os/StatFs;
    :catch_5b
    move-exception v1

    .line 618
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "testCamera"

    const-string v7, "Fail to access external storage"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    const-wide/16 v2, -0x3

    goto :goto_10
.end method

.method private getIntentInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1198
    const-string v0, "testCamera"

    const-string v1, "getIntentInfo E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "test_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "torch_on"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    .line 1206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camcorder_preview_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    .line 1208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "postview_test"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishPostViewTest:Z

    .line 1209
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntentInfo EX : cameraType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ommisionTest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mFlashEnable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFinishCamcorderPreviewTest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method private initDTPsetting()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v0}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckDTP(I)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    .line 1217
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z

    .line 1219
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    if-ne v0, v1, :cond_22

    .line 1220
    const-string v0, "testCamera"

    const-string v1, "FlashEnable = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    .line 1227
    :goto_1f
    return-void

    :cond_20
    move v0, v2

    .line 1216
    goto :goto_e

    .line 1224
    :cond_22
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    goto :goto_1f
.end method

.method private initLayoutSetting()V
    .registers 3

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1294
    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1295
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 1299
    const v0, 0x7f090001

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VideoPreview;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1305
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1306
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1308
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/framework/ShutterButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    .line 1309
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/framework/ShutterButton;->setOnShutterButtonListener(Lcom/sec/android/app/camera/framework/ShutterButton$OnShutterButtonListener;)V

    .line 1311
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1317
    :try_start_4c
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_51} :catch_60

    .line 1321
    :goto_51
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    .line 1323
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/framework/FocusRectangle;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    .line 1324
    return-void

    .line 1318
    :catch_60
    move-exception v0

    goto :goto_51
.end method

.method private restartPreview()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1840
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    .line 1844
    const-string v0, "selftest"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1845
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v0, v5, :cond_3e

    .line 1846
    const/16 v1, 0x160

    .line 1847
    const/16 v0, 0x120

    .line 1857
    :goto_15
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_6c

    .line 1858
    const-string v3, "selftest"

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1859
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v3, v5, :cond_54

    .line 1861
    invoke-virtual {v2}, Lcom/sec/android/app/camera/VideoPreview;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/VideoPreview;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/sec/android/app/camera/Camera;->setViewFinder(IIZ)V

    .line 1884
    :goto_32
    iput v5, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_3d

    .line 1887
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1888
    :cond_3d
    return-void

    .line 1849
    :cond_3e
    const/16 v1, 0x280

    .line 1850
    const/16 v0, 0x1e0

    goto :goto_15

    .line 1853
    :cond_43
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_15

    .line 1867
    :cond_54
    invoke-direct {p0, v1, v0, v5}, Lcom/sec/android/app/camera/Camera;->setViewFinder(IIZ)V

    goto :goto_32

    .line 1870
    :cond_58
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v3, v5, :cond_68

    .line 1871
    invoke-virtual {v2}, Lcom/sec/android/app/camera/VideoPreview;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/VideoPreview;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v5}, Lcom/sec/android/app/camera/Camera;->setViewFinder(IIZ)V

    goto :goto_32

    .line 1874
    :cond_68
    invoke-direct {p0, v1, v0, v5}, Lcom/sec/android/app/camera/Camera;->setViewFinder(IIZ)V

    goto :goto_32

    .line 1878
    :cond_6c
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v3, v5, :cond_74

    .line 1879
    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_32

    .line 1881
    :cond_74
    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_32
.end method

.method public static roundOrientation(I)I
    .registers 2
    .parameter "orientation"

    .prologue
    .line 2365
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private sendBroadCastAck(Ljava/lang/String;)V
    .registers 7
    .parameter "action"

    .prologue
    .line 700
    const-string v0, "testCamera"

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

    .line 701
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bSentAck:Z

    .line 705
    return-void
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .registers 4
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 2307
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 2308
    return-void
.end method

.method private setLastOrientation(I)V
    .registers 2
    .parameter "lastOrientation"

    .prologue
    .line 2369
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mLastOrientation:I

    .line 2370
    return-void
.end method

.method private setStoragepath()V
    .registers 2

    .prologue
    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bUseSdcard:Z

    .line 1232
    return-void
.end method

.method private setViewFinder(IIZ)V
    .registers 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1891
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewFinder - w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_3c

    .line 1893
    const-string v1, "testCamera"

    const-string v2, "setViewFinder - mPausing == true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :cond_3b
    :goto_3b
    return-void

    .line 1897
    :cond_3c
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_96

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderWidth:I

    if-ne p1, v1, :cond_96

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderHeight:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_96

    .line 1898
    const-string v1, "testCamera"

    const-string v2, "mPreviewing && w == mViewFinderWidth && h == mViewFinderHeight"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviewing("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mViewFinderHeight("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1904
    :cond_96
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->ensureCameraDevice()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 1905
    const-string v1, "testCamera"

    const-string v2, "!ensureCameraDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1909
    :cond_a4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_b0

    .line 1910
    const-string v1, "testCamera"

    const-string v2, "mSurfaceHolder == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 1914
    :cond_b0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1915
    const-string v1, "testCamera"

    const-string v2, "isFinishing()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1919
    :cond_bf
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_cc

    .line 1920
    const-string v1, "testCamera"

    const-string v2, "setViewFinder - mPausing == true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1925
    :cond_cc
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderWidth:I

    .line 1928
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mViewFinderHeight:I

    .line 1929
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderHeight:I

    if-nez v1, :cond_130

    .line 1930
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set OriginalViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1932
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1935
    :cond_130
    if-nez p3, :cond_13b

    .line 1936
    const-string v1, "testCamera"

    const-string v2, "startPreview == false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1946
    :cond_13b
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_149

    .line 1947
    const-string v1, "testCamera"

    const-string v2, "mPreviewing == true, stopPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPreview()V

    .line 1953
    :cond_149
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1961
    move/from16 v0, p2

    if-ge p1, v0, :cond_354

    .line 1965
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swapped dimensions W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :goto_179
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_1fe

    .line 1969
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1970
    if-nez v1, :cond_18e

    .line 1971
    const-string v1, "testCamera"

    const-string v2, "supported preview size is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 1975
    :cond_18e
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1976
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v5, v2

    div-double v2, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera;->findOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1978
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1980
    const-string v1, "KOR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 1981
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c0

    .line 1982
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "selftestmode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1987
    :cond_1c0
    const-string v1, "selftest"

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 1988
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1fe

    .line 1989
    const-string v1, "testCamera"

    const-string v2, "FRONT_CAMERA_MODE: 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const-string v1, "testCamera"

    const-string v2, "FRONT_CAMERA_PREIVEW_WIDTH: 352, VT_CAMERA_PREIVEW_HEIGHT: 288"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const-string v1, "testCamera"

    const-string v2, "FRONT_CAMERA_MIN_FPS: 15000, VT_CAMERA_MAX_FPS: 15000"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "vtmode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1997
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x160

    const/16 v3, 0x120

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1999
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x3a98

    const/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 2005
    :cond_1fe
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParameters.setPreviewSize W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    if-nez v1, :cond_311

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_311

    .line 2008
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "chk_dataline"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2013
    :goto_233
    :try_start_233
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_241
    .catch Ljava/lang/IllegalArgumentException; {:try_start_233 .. :try_end_241} :catch_351
    .catch Ljava/lang/RuntimeException; {:try_start_233 .. :try_end_241} :catch_31b

    .line 2031
    :goto_241
    :try_start_241
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setPreviewDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_24f} :catch_32c

    .line 2041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2042
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    .line 2044
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 2045
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v7, p0, v5, v1, v2}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/Object;J)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2080
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2091
    const-string v6, "testCamera"

    const-string v7, "calling mCameraDevice.startPreview"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :try_start_270
    const-string v6, "testCamera"

    const-string v7, "mCameraDevice.startPreview()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    if-eqz v6, :cond_299

    .line 2096
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPreviewCallback:Lcom/sec/android/app/camera/Camera$PreviewCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2097
    const-string v6, "testCamera"

    const-string v7, "setViewFinder :: postDelayed-mDatalineCheck()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2099
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2102
    :cond_299
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V
    :try_end_29e
    .catch Ljava/lang/Throwable; {:try_start_270 .. :try_end_29e} :catch_33e

    .line 2112
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    if-nez v6, :cond_2b2

    .line 2113
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2114
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2116
    :cond_2b2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v6}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckDTP(I)Z

    move-result v6

    if-nez v6, :cond_2c0

    .line 2117
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startTimerCaptureBlock()V

    .line 2119
    :cond_2c0
    const-string v6, "testCamera"

    const-string v7, "setViewFinder : set mPreviewing = true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    .line 2122
    monitor-enter v5

    .line 2123
    :try_start_2cb
    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 2124
    monitor-exit v5
    :try_end_2cf
    .catchall {:try_start_2cb .. :try_end_2cf} :catchall_34e

    .line 2126
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    .line 2127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2128
    sub-long v9, v7, v1

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3b

    .line 2129
    const-string v9, "testCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview() to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v1, v7, v1

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms. Thread time was"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2010
    :cond_311
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "chk_dataline"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_233

    .line 2017
    :catch_31b
    move-exception v1

    .line 2018
    const-string v1, "testCamera"

    const-string v2, "setParameter fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3b

    .line 2033
    :catch_32c
    move-exception v1

    .line 2034
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setPreviewDisplay exception!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2036
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    goto/16 :goto_3b

    .line 2103
    :catch_33e
    move-exception v1

    .line 2107
    const-string v2, "testCamera"

    const-string v3, "exception while startPreview"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2108
    const v1, 0x7f070009

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V

    goto/16 :goto_3b

    .line 2124
    :catchall_34e
    move-exception v1

    :try_start_34f
    monitor-exit v5
    :try_end_350
    .catchall {:try_start_34f .. :try_end_350} :catchall_34e

    throw v1

    .line 2015
    :catch_351
    move-exception v1

    goto/16 :goto_241

    :cond_354
    move/from16 v13, p2

    move/from16 p2, p1

    move p1, v13

    goto/16 :goto_179
.end method

.method private startCamera()V
    .registers 3

    .prologue
    .line 1235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOpenCameraThread:Ljava/lang/Thread;

    .line 1290
    return-void
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_d

    .line 1132
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1134
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    .line 1135
    const-string v0, "testCamera"

    const-string v1, "stopPreview : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->clearFocusState()V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_23

    .line 1139
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1140
    :cond_23
    return-void
.end method

.method private updateFocusIndicator()V
    .registers 3

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    if-nez v0, :cond_5

    .line 2188
    :goto_4
    return-void

    .line 2178
    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 2180
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->showStart()V

    goto :goto_4

    .line 2181
    :cond_15
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->showSuccess()V

    goto :goto_4

    .line 2183
    :cond_20
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 2184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->showFail()V

    goto :goto_4

    .line 2186
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/camera/framework/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/framework/FocusRectangle;->clear()V

    goto :goto_4
.end method

.method private writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13
    .parameter "directory"
    .parameter "filename"
    .parameter "data"

    .prologue
    .line 631
    const-string v6, "testCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeImage : directory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v3, 0x0

    .line 633
    .local v3, outputStream:Ljava/io/OutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;

    .line 636
    :try_start_32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 638
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 639
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .local v5, redir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 642
    .end local v5           #redir:Ljava/io/File;
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_51

    .line 643
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 644
    :cond_51
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_5b} :catch_66
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_5b} :catch_72

    .line 646
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_5b
    invoke-virtual {v4, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_85
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5e} :catch_8b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_88

    .line 653
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63

    move-object v3, v4

    .line 658
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    :goto_62
    return-void

    .line 654
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_63
    move-exception v6

    move-object v3, v4

    .line 657
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_62

    .line 647
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :catch_66
    move-exception v1

    .line 648
    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_67
    :try_start_67
    const-string v6, "testCamera"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_7e

    .line 653
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_62

    .line 654
    :catch_70
    move-exception v6

    goto :goto_62

    .line 649
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_72
    move-exception v1

    .line 650
    .local v1, ex:Ljava/io/IOException;
    :goto_73
    :try_start_73
    const-string v6, "testCamera"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_7e

    .line 653
    :try_start_78
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_62

    .line 654
    :catch_7c
    move-exception v6

    goto :goto_62

    .line 652
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_7e
    move-exception v6

    .line 653
    :goto_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 656
    :goto_82
    throw v6

    .line 654
    :catch_83
    move-exception v7

    goto :goto_82

    .line 652
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catchall_85
    move-exception v6

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_7f

    .line 649
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_88
    move-exception v1

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_73

    .line 647
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_8b
    move-exception v1

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_67
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BI)Landroid/net/Uri;
    .registers 13
    .parameter "resolver"
    .parameter "title"
    .parameter "date"
    .parameter "jpeg"
    .parameter "orientation"

    .prologue
    .line 569
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addImage title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 572
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v3, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v3, "_size"

    array-length v4, p5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v3, "_data"

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v3, "orientation"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const/4 v1, 0x0

    .line 582
    .local v1, uri:Landroid/net/Uri;
    :try_start_66
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6b} :catch_8f

    move-result-object v1

    .line 586
    :goto_6c
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addImage uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    return-object v1

    .line 583
    :catch_8f
    move-exception v0

    .line 584
    .local v0, th:Ljava/lang/Throwable;
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write MediaStore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c
.end method

.method protected calculateOrientationForPicture(I)I
    .registers 6
    .parameter "orientation"

    .prologue
    .line 2385
    const/4 v1, 0x0

    .line 2386
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_16

    .line 2387
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    aget-object v0, v2, v3

    .line 2394
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 2395
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 2403
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_16
    :goto_16
    return v1

    .line 2397
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_17
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p1

    rem-int/lit16 v1, v2, 0x168

    goto :goto_16
.end method

.method public findOptimalPreviewSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-wide v5, 0x7fefffffffffffffL

    .line 2217
    .line 2218
    if-nez p1, :cond_9

    .line 2265
    :cond_8
    return-object v4

    .line 2230
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2232
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2234
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "display.getHeight() = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " display.getWidth() = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    if-gtz v0, :cond_c3

    .line 2239
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    move v1, v0

    .line 2243
    :goto_56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v5

    :cond_5b
    :goto_5b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2244
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v8

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 2245
    sub-double/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3f50624dd2f1a9fcL

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_5b

    .line 2247
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_c1

    .line 2249
    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    :goto_90
    move-object v4, v0

    .line 2251
    goto :goto_5b

    .line 2255
    :cond_92
    if-nez v4, :cond_8

    .line 2256
    const-string v0, "testCamera"

    const-string v2, "No preview size match the aspect ratio"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9f
    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 2259
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v7, v3

    cmpg-double v3, v7, v5

    if-gez v3, :cond_9f

    .line 2261
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v5, v3

    move-object v4, v0

    goto :goto_9f

    :cond_c1
    move-object v0, v4

    goto :goto_90

    :cond_c3
    move v1, v0

    goto :goto_56
.end method

.method public finishPostViewTest()V
    .registers 5

    .prologue
    .line 2417
    invoke-static {}, Lcom/sec/android/app/camera/CameraStorage;->getInstance()Lcom/sec/android/app/camera/CameraStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    .line 2418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2419
    const-string v1, "data_filepath"

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraStorage;->getFilePath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraStorage;->clearFilePath()V

    .line 2422
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 2423
    return-void
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/framework/CameraSettings;

    return-object v0
.end method

.method public getLastOrientation()I
    .registers 2

    .prologue
    .line 2373
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mLastOrientation:I

    return v0
.end method

.method public getOrientationOnTake()I
    .registers 2

    .prologue
    .line 2381
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationOnTake:I

    return v0
.end method

.method public initialize()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1327
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bSentAck:Z

    .line 1328
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mStopCamera:Z

    .line 1331
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    .line 1333
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1334
    const v1, 0x3000001a

    const-string v2, "testCamera"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1340
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    .line 1343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1344
    const-string v1, "com.android.samsungtest.CameraStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1348
    sget-object v0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_3b

    .line 1349
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1351
    :cond_3b
    new-instance v0, Lcom/sec/android/app/camera/Camera$ImageCapture;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$ImageCapture;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

    .line 1353
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->ensureCameraDevice()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1354
    const-string v0, "testCamera"

    const-string v1, "onResume() - ensureCameraDevice is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :goto_4f
    return-void

    .line 1358
    :cond_50
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1360
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1361
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v0, :cond_c4

    .line 1362
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    if-ne v0, v4, :cond_b3

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_TORCH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1380
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->restartPreview()V

    .line 1382
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateFocusIndicator()V

    .line 1385
    :try_start_8b
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_8b .. :try_end_95} :catch_96

    goto :goto_4f

    .line 1387
    :catch_96
    move-exception v0

    .line 1388
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_4f

    .line 1366
    :cond_b3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1370
    :cond_c4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2312
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2313
    packed-switch p1, :pswitch_data_9c

    .line 2347
    :cond_8
    :goto_8
    return-void

    .line 2315
    :pswitch_9
    if-ne p2, v1, :cond_85

    .line 2316
    const-string v0, "camera_id"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    .line 2318
    const-string v0, "ommision_test"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    .line 2320
    const-string v0, "torch_on"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    .line 2322
    const-string v0, "camcorder_preview_test"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    .line 2325
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : cameraType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ommisionTest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mFlashEnable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mFinishCamcorderPreviewTest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initDTPsetting()V

    .line 2330
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->setStoragepath()V

    .line 2331
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startCamera()V

    .line 2332
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initLayoutSetting()V

    .line 2334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initialize()V

    goto :goto_8

    .line 2336
    :cond_85
    if-nez p2, :cond_8c

    .line 2337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_8

    .line 2339
    :cond_8c
    const v0, 0x7f070009

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V

    goto/16 :goto_8

    .line 2343
    :pswitch_94
    if-ne p2, v1, :cond_8

    .line 2344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishPostViewTest()V

    goto/16 :goto_8

    .line 2313
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_94
    .end packed-switch
.end method

.method public onCheckDataLineDone()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 888
    const-string v0, "testCamera"

    const-string v1, "onChkDataLineDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "chk_dataline"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_32
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPreview()V

    .line 902
    :try_start_35
    const-string v0, "testCamera"

    const-string v1, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_43} :catch_114

    .line 908
    :goto_43
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckCamcorderPreviewTest()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    if-nez v0, :cond_71

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v0, :cond_71

    .line 910
    const-string v0, "testCamera"

    const-string v1, "finish onchkdataline. go to camcorder preview test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    const-string v1, "camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v1, "picture-size"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 964
    :goto_70
    return-void

    .line 918
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 919
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 920
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v0, :cond_f1

    .line 921
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    if-ne v0, v3, :cond_e0

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_TORCH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_9a
    :goto_9a
    :try_start_9a
    const-string v0, "testCamera"

    const-string v1, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_a8} :catch_112

    .line 942
    :goto_a8
    :try_start_a8
    const-string v0, "testCamera"

    const-string v1, "mCameraDevice.startPreview()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    if-eqz v0, :cond_ba

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviewCallback:Lcom/sec/android/app/camera/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 946
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_bf} :catch_102

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_c8

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 959
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v0}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckDTP(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startTimerCaptureBlock()V

    .line 962
    :cond_d6
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    .line 963
    const-string v0, "testCamera"

    const-string v1, "onChkDataLineDone : mPreviewing set true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 925
    :cond_e0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 929
    :cond_f1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a

    .line 947
    :catch_102
    move-exception v0

    .line 951
    const-string v1, "testCamera"

    const-string v2, "exception while startPreview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    const v0, 0x7f070009

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->dialogErrorPopup(I)V

    goto/16 :goto_70

    .line 937
    :catch_112
    move-exception v0

    goto :goto_a8

    .line 904
    :catch_114
    move-exception v0

    goto/16 :goto_43
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1396
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1398
    const-string v0, "testCamera"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 1403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->setSystemKeyBlock(Landroid/content/ComponentName;I)V

    .line 1407
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getIntentInfo()V

    .line 1408
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initDTPsetting()V

    .line 1410
    const-string v0, "selftest"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->testType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1411
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    .line 1412
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bCheckDTP:Z

    .line 1413
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    .line 1426
    :cond_33
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->setStoragepath()V

    .line 1429
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startCamera()V

    .line 1431
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initLayoutSetting()V

    .line 1441
    :goto_3c
    return-void

    .line 1417
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckCamcorderPreviewTest()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    if-ne v0, v2, :cond_33

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    if-nez v0, :cond_33

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    if-eq v0, v2, :cond_33

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v0, :cond_33

    .line 1421
    const-string v0, "testCamera"

    const-string v1, "onCreate skip DTP test..go to camcorder preview test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 1562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1564
    sparse-switch p1, :sswitch_data_2e0

    .line 1759
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_15
    :goto_15
    :sswitch_15
    return v0

    .line 1573
    :sswitch_16
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v1}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasZoom(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1576
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v1, :cond_15

    .line 1577
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1578
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    .line 1579
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_VOLUME_DOWN - [zoom max]:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-lt v1, v2, :cond_86

    .line 1582
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1586
    :goto_7e
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_15

    .line 1584
    :cond_86
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_7e

    .line 1590
    :sswitch_92
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    invoke-static {v1}, Lcom/sec/android/app/camera/framework/CameraSettings;->hasZoom(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1593
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v1, :cond_15

    .line 1594
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1595
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    .line 1596
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_VOLUME_UP - zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    if-gtz v1, :cond_e1

    .line 1598
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1602
    :goto_d8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_15

    .line 1600
    :cond_e1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_d8

    .line 1607
    :sswitch_ed
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_15

    .line 1609
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->ommisionTest:Z

    if-eqz v1, :cond_12e

    .line 1610
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    if-nez v1, :cond_10a

    .line 1611
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1612
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/camera/Camera;->mCurrentTime:J

    .line 1613
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    .line 1614
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startTimer()V

    goto/16 :goto_15

    .line 1617
    :cond_10a
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsPressedBackkey:Z

    .line 1618
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1619
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/camera/Camera;->mCurrentTime:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_11

    .line 1620
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_15

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_15

    .line 1625
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1626
    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_11

    .line 1631
    :cond_12e
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_15

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_15

    .line 1636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1637
    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_11

    .line 1644
    :sswitch_13f
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    if-eqz v1, :cond_15

    .line 1646
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_14f

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_14f

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_177

    .line 1650
    :cond_14f
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_FOCUS - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1654
    :cond_177
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1655
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->doFocus(Z)V

    goto/16 :goto_15

    .line 1659
    :sswitch_182
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    if-eqz v1, :cond_15

    .line 1661
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_1b2

    .line 1663
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_CAMERA - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1667
    :cond_1b2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1674
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->doSnap()V

    goto/16 :goto_15

    .line 1679
    :sswitch_1bd
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_1c9

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_1c9

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_1f1

    .line 1683
    :cond_1c9
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_DPAD_CENTER - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1690
    :cond_1f1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1696
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->doFocus(Z)V

    .line 1697
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 1698
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->requestFocusFromTouch()Z

    .line 1702
    :goto_207
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/framework/ShutterButton;->setPressed(Z)V

    goto/16 :goto_15

    .line 1700
    :cond_20e
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/framework/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/framework/ShutterButton;->requestFocus()Z

    goto :goto_207

    .line 1706
    :sswitch_214
    const-string v1, "testCamera"

    const-string v2, "KEYCODE_1 pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1708
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_15

    .line 1709
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v1

    const-string v2, "macro"

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupportedFocusModes(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 1712
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "macro"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1714
    :try_start_246
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_254
    .catch Ljava/lang/IllegalArgumentException; {:try_start_246 .. :try_end_254} :catch_256
    .catch Ljava/lang/RuntimeException; {:try_start_246 .. :try_end_254} :catch_259

    goto/16 :goto_15

    .line 1716
    :catch_256
    move-exception v1

    goto/16 :goto_15

    .line 1719
    :catch_259
    move-exception v1

    .line 1720
    const-string v1, "testCamera"

    const-string v2, "setParameter fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_15

    .line 1725
    :cond_26a
    const-string v1, "testCamera"

    const-string v2, "not support macro mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const-string v1, "Not support Macro Mode"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    .line 1733
    :sswitch_27c
    const-string v1, "testCamera"

    const-string v2, "KEYCODE_2 pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 1735
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_15

    .line 1736
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1737
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/framework/CameraSettings;->isSupportedFocusModes(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2d6

    .line 1739
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/framework/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1741
    :try_start_2b2
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b2 .. :try_end_2c0} :catch_2c2
    .catch Ljava/lang/RuntimeException; {:try_start_2b2 .. :try_end_2c0} :catch_2c5

    goto/16 :goto_15

    .line 1743
    :catch_2c2
    move-exception v1

    goto/16 :goto_15

    .line 1746
    :catch_2c5
    move-exception v1

    .line 1747
    const-string v1, "testCamera"

    const-string v2, "setParameter fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_15

    .line 1752
    :cond_2d6
    const-string v1, "testCamera"

    const-string v2, "not support focusmode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1564
    nop

    :sswitch_data_2e0
    .sparse-switch
        0x4 -> :sswitch_ed
        0x5 -> :sswitch_15
        0x8 -> :sswitch_214
        0x9 -> :sswitch_27c
        0x17 -> :sswitch_1bd
        0x18 -> :sswitch_92
        0x19 -> :sswitch_16
        0x1b -> :sswitch_182
        0x50 -> :sswitch_13f
        0x52 -> :sswitch_15
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1764
    sparse-switch p1, :sswitch_data_3e

    .line 1798
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_a
    :goto_a
    :sswitch_a
    return v0

    .line 1766
    :sswitch_b
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    if-eqz v1, :cond_a

    .line 1768
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->doFocus(Z)V

    goto :goto_a

    .line 1780
    :sswitch_13
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v1, :cond_32

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v1, v2, :cond_32

    .line 1781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1782
    const-string v2, "data_filepath"

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->cs:Lcom/sec/android/app/camera/CameraStorage;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraStorage;->getFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1783
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_a

    .line 1785
    :cond_32
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-ne v1, v0, :cond_a

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v1, v2, :cond_a

    .line 1786
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startPostViewTest()V

    goto :goto_a

    .line 1764
    :sswitch_data_3e
    .sparse-switch
        0x5 -> :sswitch_a
        0x8 -> :sswitch_a
        0x9 -> :sswitch_a
        0x18 -> :sswitch_a
        0x19 -> :sswitch_13
        0x50 -> :sswitch_b
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_b

    .line 1505
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1508
    :cond_b
    const-string v0, "testCamera"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2c

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1512
    const-string v0, "testCamera"

    const-string v1, "releaseWakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1515
    :cond_2a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1518
    :cond_2c
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    .line 1521
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1522
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mDatalineCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1532
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPreview()V

    .line 1533
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->closeCamera()V

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1539
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_62} :catch_85

    .line 1544
    :goto_62
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_6d

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1546
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1549
    :cond_6d
    const-string v0, "testCamera"

    const-string v1, "mImageCapture = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

    .line 1552
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mStopCamera:Z

    if-eqz v0, :cond_81

    .line 1553
    const-string v0, "com.android.samsungtest.CAMERA_STOP_ACK"

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->sendBroadCastAck(Ljava/lang/String;)V

    .line 1554
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mStopCamera:Z

    .line 1557
    :cond_81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1558
    return-void

    .line 1540
    :catch_85
    move-exception v0

    goto :goto_62
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1445
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1446
    const-string v1, "testCamera"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/framework/CameraSettings;

    invoke-static {}, Lcom/sec/android/app/camera/framework/CameraSettings;->needToCheckCamcorderPreviewTest()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bEnablePreviewCb:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bDoneDTP:Z

    if-ne v1, v3, :cond_48

    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mFinishCamcorderPreviewTest:Z

    if-nez v1, :cond_48

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mFlashEnable:I

    if-eq v1, v3, :cond_48

    iget v1, p0, Lcom/sec/android/app/camera/Camera;->cameraType:I

    if-nez v1, :cond_48

    .line 1454
    const-string v1, "testCamera"

    const-string v2, "onResume skip DTP test..go to camcorder preview test"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1456
    const-string v2, "camera_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1457
    const-string v2, "picture-size"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1458
    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1460
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 1474
    :goto_47
    return-void

    .line 1464
    :cond_48
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mNumberOfCameras:I

    .line 1465
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mNumberOfCameras:I

    new-array v1, v1, [Landroid/hardware/Camera$CameraInfo;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 1466
    :goto_54
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mNumberOfCameras:I

    if-ge v0, v1, :cond_6b

    .line 1467
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v1, v0

    .line 1468
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v1, v0

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 1471
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->setOrientationListener()V

    .line 1473
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initialize()V

    goto :goto_47
.end method

.method public onShutterButtonClick(Lcom/sec/android/app/camera/framework/ShutterButton;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 395
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_c

    .line 422
    :goto_b
    return-void

    .line 400
    :cond_c
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 402
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonClick - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 407
    :cond_38
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    if-nez v0, :cond_44

    .line 408
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 412
    :cond_44
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    if-eqz v0, :cond_50

    .line 413
    const-string v0, "testCamera"

    const-string v1, "mShutterBtnlock is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 417
    :cond_50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/framework/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    goto :goto_b

    .line 419
    :pswitch_58
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->doSnap()V

    goto :goto_b

    .line 417
    :pswitch_data_5c
    .packed-switch 0x7f090002
        :pswitch_58
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/sec/android/app/camera/framework/ShutterButton;Z)V
    .registers 7
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v3, 0x2

    .line 308
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_d

    .line 337
    :goto_c
    return-void

    .line 312
    :cond_d
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    if-eq v0, v3, :cond_1a

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    if-ne v0, v3, :cond_43

    .line 316
    :cond_1a
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonFocus - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mFocusState:I

    goto :goto_c

    .line 322
    :cond_43
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    if-nez v0, :cond_4f

    .line 323
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 327
    :cond_4f
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterBtnlock:Z

    if-eqz v0, :cond_5b

    .line 328
    const-string v0, "testCamera"

    const-string v1, "mShutterBtnlock is true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 332
    :cond_5b
    invoke-virtual {p1}, Lcom/sec/android/app/camera/framework/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    goto :goto_c

    .line 334
    :pswitch_63
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/Camera;->doFocus(Z)V

    goto :goto_c

    .line 332
    nop

    :pswitch_data_68
    .packed-switch 0x7f090002
        :pswitch_63
    .end packed-switch
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 1497
    const-string v0, "testCamera"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1500
    return-void
.end method

.method protected setOrientationListener()V
    .registers 2

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_b

    .line 2351
    new-instance v0, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2361
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2362
    return-void
.end method

.method protected setOrientationOnTake(I)V
    .registers 2
    .parameter "orientationOnTake"

    .prologue
    .line 2377
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mOrientationOnTake:I

    .line 2378
    return-void
.end method

.method public shortSnapshotcancelAutoFocus()V
    .registers 5

    .prologue
    .line 967
    const-string v0, "testCamera"

    const-string v1, "short snapshot cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_10

    .line 969
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 971
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 972
    return-void
.end method

.method public startPostViewTest()V
    .registers 3

    .prologue
    .line 2411
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/PostViewTest;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2412
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2413
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1830
    return-void
.end method

.method protected startTimerCaptureBlock()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsCaptureEnable:Z

    .line 1834
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1835
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1837
    return-void
.end method

.method public streamToBytes(Ljava/io/InputStream;I)[B
    .registers 7
    .parameter "is"
    .parameter "size"

    .prologue
    .line 767
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 768
    .local v2, os:Ljava/io/ByteArrayOutputStream;
    new-array v0, p2, [B

    .line 771
    .local v0, buffer:[B
    :goto_7
    :try_start_7
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    if-ltz v1, :cond_13

    .line 772
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_7

    .line 774
    .end local v1           #len:I
    :catch_12
    move-exception v3

    .line 776
    :cond_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1077
    const-string v0, "testCamera"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    if-ge p3, p4, :cond_42

    .line 1084
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swap - w : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :goto_2b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceView:Lcom/sec/android/app/camera/VideoPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/VideoPreview;->setVisibility(I)V

    .line 1089
    const/4 v0, 0x1

    .line 1097
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderWidth:I

    if-nez v1, :cond_3a

    .line 1098
    iput p4, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1099
    iput p3, p0, Lcom/sec/android/app/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1101
    :cond_3a
    invoke-direct {p0, p4, p3, v0}, Lcom/sec/android/app/camera/Camera;->setViewFinder(IIZ)V

    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mImageCapture:Lcom/sec/android/app/camera/Camera$ImageCapture;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureObject:Lcom/sec/android/app/camera/Interface/Capturer;

    .line 1105
    return-void

    :cond_42
    move v3, p4

    move p4, p3

    move p3, v3

    goto :goto_2b
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 1108
    const-string v0, "testCamera"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1110
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter

    .prologue
    .line 1113
    const-string v0, "testCamera"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPreview()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1116
    return-void
.end method
