.class public Lcom/sec/android/app/camera/CameraStorage;
.super Ljava/lang/Object;
.source "CameraStorage.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/camera/CameraStorage;


# instance fields
.field private mFrontFile:Ljava/lang/String;

.field private mRearFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/CameraStorage;->mInstance:Lcom/sec/android/app/camera/CameraStorage;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mRearFile:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mFrontFile:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/camera/CameraStorage;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/sec/android/app/camera/CameraStorage;->mInstance:Lcom/sec/android/app/camera/CameraStorage;

    if-nez v0, :cond_b

    .line 13
    new-instance v0, Lcom/sec/android/app/camera/CameraStorage;

    invoke-direct {v0}, Lcom/sec/android/app/camera/CameraStorage;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/CameraStorage;->mInstance:Lcom/sec/android/app/camera/CameraStorage;

    .line 14
    :cond_b
    sget-object v0, Lcom/sec/android/app/camera/CameraStorage;->mInstance:Lcom/sec/android/app/camera/CameraStorage;

    return-object v0
.end method


# virtual methods
.method clearFilePath()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mRearFile:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mFrontFile:Ljava/lang/String;

    .line 33
    return-void
.end method

.method getFilePath(I)Ljava/lang/String;
    .registers 3
    .parameter "cameraType"

    .prologue
    .line 24
    if-nez p1, :cond_5

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mRearFile:Ljava/lang/String;

    .line 27
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraStorage;->mFrontFile:Ljava/lang/String;

    goto :goto_4
.end method

.method setFilePath(ILjava/lang/String;)V
    .registers 3
    .parameter "cameraType"
    .parameter "file"

    .prologue
    .line 17
    if-nez p1, :cond_5

    .line 18
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraStorage;->mRearFile:Ljava/lang/String;

    .line 22
    :goto_4
    return-void

    .line 20
    :cond_5
    iput-object p2, p0, Lcom/sec/android/app/camera/CameraStorage;->mFrontFile:Ljava/lang/String;

    goto :goto_4
.end method
