.class public Lcom/sec/android/app/camerafirmware/CameraFirmware;
.super Landroid/app/Activity;
.source "CameraFirmware.java"


# static fields
.field private static final mSalesCode:Ljava/lang/String;


# instance fields
.field protected PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

.field protected PREF_KEY_UPCOUNT_ENG_FRONT:Ljava/lang/String;

.field protected PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

.field protected PREF_KEY_UPCOUNT_USER_FRONT:Ljava/lang/String;

.field mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

.field mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToast:Landroid/widget/Toast;

.field private mDate:Ljava/util/Date;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

.field private mHandler:Landroid/os/Handler;

.field private mKeystringBlockFlag:Z

.field private mPopup:Landroid/app/AlertDialog;

.field private final mProductShip:Ljava/lang/String;

.field mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 91
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 60
    new-instance v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-direct {v0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    .line 61
    new-instance v0, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    invoke-direct {v0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    .line 63
    new-instance v0, Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-direct {v0}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    .line 79
    const-string v0, "pref_firmware_upcount_eng_key"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    .line 80
    const-string v0, "pref_firmware_upcount_user_key"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    .line 82
    const-string v0, "pref_firmware_upcount_eng_front_key"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG_FRONT:Ljava/lang/String;

    .line 83
    const-string v0, "pref_firmware_upcount_user_front_key"

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER_FRONT:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 94
    const-string v0, "ro.product_ship"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mProductShip:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mProductShip:Ljava/lang/String;

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->isKeyStringBlocked()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x1

    :goto_56
    iput-boolean v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mKeystringBlockFlag:Z

    .line 140
    new-instance v0, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$1;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    .line 555
    new-instance v0, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$4;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    return-void

    .line 97
    :cond_67
    const/4 v0, 0x0

    goto :goto_56
.end method

.method private CheckCamFWDate()J
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, CamFW:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v7}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 671
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 672
    .local v2, CamFWVersionY:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 673
    .local v5, ch:[C
    aget-char v7, v5, v8

    add-int/lit8 v7, v7, -0x43

    add-int/lit16 v4, v7, 0x7d9

    .line 674
    .local v4, Year:I
    const/4 v7, 0x4

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, CamFWVersionM:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 676
    .local v6, ch1:[C
    aget-char v7, v6, v8

    add-int/lit8 v7, v7, -0x41

    add-int/lit8 v3, v7, 0x1

    .line 678
    .local v3, Month:I
    new-instance v7, Ljava/util/Date;

    const/4 v8, 0x1

    invoke-direct {v7, v4, v3, v8}, Ljava/util/Date;-><init>(III)V

    iput-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 679
    const-string v7, "CameraFirmware"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CamFW Date = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    return-wide v7
.end method

.method private CheckCamFWVersion()I
    .registers 8

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 686
    .local v0, CamFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 687
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, CamFWVersionD:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 689
    .local v3, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v3, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v3, v5

    add-int v2, v4, v5

    .line 690
    .local v2, Version:I
    const-string v4, "CameraFirmware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckCamFWVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return v2
.end method

.method private CheckPhoneFWDate()J
    .registers 12

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 642
    const/4 v4, 0x0

    .line 644
    .local v4, phoneFW:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v7}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v4

    .line 645
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, phoneFWVersionY:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 647
    .local v2, ch:[C
    aget-char v7, v2, v8

    add-int/lit8 v7, v7, -0x43

    add-int/lit16 v1, v7, 0x7d9

    .line 648
    .local v1, Year:I
    const/4 v7, 0x4

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, phoneFWVersionM:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 650
    .local v3, ch1:[C
    aget-char v7, v3, v8

    add-int/lit8 v7, v7, -0x41

    add-int/lit8 v0, v7, 0x1

    .line 652
    .local v0, Month:I
    new-instance v7, Ljava/util/Date;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v0, v8}, Ljava/util/Date;-><init>(III)V

    iput-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 653
    const-string v7, "CameraFirmware"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PhoneFW Date = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v7, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    return-wide v7
.end method

.method private CheckPhoneFWVersion()I
    .registers 8

    .prologue
    .line 659
    const/4 v2, 0x0

    .line 660
    .local v2, phoneFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    .line 661
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, phoneFWVersionD:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 663
    .local v1, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v1, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v1, v5

    add-int v0, v4, v5

    .line 664
    .local v0, Version:I
    const-string v4, "CameraFirmware"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckPhoneFWVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v0
.end method

.method private DialogPopup(I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "messageId"

    .prologue
    .line 695
    const-string v1, "CameraFirmware"

    const-string v2, "DialogPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 698
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 701
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 702
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Phone FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 705
    const v1, 0x7f070002

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$5;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    const-string v1, "No"

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$6;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camerafirmware/CameraFirmware;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)Landroid/app/AlertDialog;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->isSameVendor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camerafirmware/CameraFirmware;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->manageFirmware()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camerafirmware/CameraFirmware;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camerafirmware/CameraFirmware;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    move-result v0

    return v0
.end method

.method private dialogErrorPopup(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 723
    const-string v1, "CameraFirmware"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 728
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Phone FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 733
    const v1, 0x7f070001

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$7;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    .line 740
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 741
    return-void
.end method

.method private init()V
    .registers 9

    .prologue
    const v7, 0x7f09000e

    const v6, 0x7f09000c

    const/4 v5, 0x0

    const v4, 0x7f090009

    const/16 v3, 0x8

    .line 388
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 389
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "TouchFirmware"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    .line 394
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 398
    const v1, 0x7f090008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->ChkUserFirmwareFile()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 401
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 408
    :goto_4d
    const v1, 0x7f09000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 410
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 424
    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;->resetFWInfo()V

    .line 429
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->resetFWInfo()V

    .line 431
    const-string v1, "DCM"

    sget-object v2, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-boolean v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mKeystringBlockFlag:Z

    if-eqz v1, :cond_c4

    .line 432
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_c4
    return-void

    .line 403
    :cond_c5
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4d
.end method

.method public static isKeyStringBlocked()Z
    .registers 5

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, imeiBlocked:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/keystr"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "CameraFirmware"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_25

    .line 109
    :goto_14
    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 110
    const-string v2, "CameraFirmware"

    const-string v3, "return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v2, 0x1

    .line 114
    :goto_24
    return v2

    .line 105
    :catch_25
    move-exception v0

    .line 106
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 107
    const-string v2, "CameraFirmware"

    const-string v3, "cannot open file : /efs/FactoryApp/keystr "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 113
    .end local v0           #e1:Ljava/io/IOException;
    :cond_30
    const-string v2, "CameraFirmware"

    const-string v3, "return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private isSameVendor()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 137
    :cond_10
    :goto_10
    return v0

    .line 129
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 133
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getCamFWVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :cond_67
    move v0, v1

    .line 137
    goto :goto_10
.end method

.method private manageFirmware()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x4e20

    .line 503
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 505
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_14

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 509
    :cond_14
    const-string v1, "Start the firmware update"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 513
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    if-ne v1, v2, :cond_47

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    :cond_32
    :goto_32
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    if-eqz v1, :cond_46

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    if-ne v1, v2, :cond_59

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 525
    :cond_46
    :goto_46
    return-void

    .line 515
    :cond_47
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    if-ne v1, v2, :cond_32

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_32

    .line 523
    :cond_59
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    goto :goto_46
.end method

.method private setBlockHold(Z)Z
    .registers 6
    .parameter "bBlock"

    .prologue
    .line 452
    const-string v1, "CameraFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlockHold - bBlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_29

    .line 456
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    .line 468
    :cond_29
    const-string v1, "CameraFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlockHold - bResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v0
.end method


# virtual methods
.method protected ChkUserFirmwareFile()Z
    .registers 6

    .prologue
    .line 589
    const/4 v0, 0x0

    .line 591
    .local v0, UserFirmwareFile:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SlimISP.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v2, "CameraFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChkUserFirmwareFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 598
    const-string v2, "CameraFirmware"

    const-string v3, "User Firmware file exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v2, 0x1

    .line 602
    :goto_41
    return v2

    .line 601
    :cond_42
    const-string v2, "CameraFirmware"

    const-string v3, "User Firmware file doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v2, 0x0

    goto :goto_41
.end method

.method protected IsNewFirmwareDate()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 626
    const-string v0, "CameraFirmware"

    const-string v1, "IsNewFirmwareDate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_18

    .line 628
    const/4 v0, 0x1

    .line 632
    :goto_17
    return v0

    .line 629
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_27

    .line 630
    const/4 v0, 0x0

    goto :goto_17

    .line 632
    :cond_27
    const/4 v0, -0x1

    goto :goto_17
.end method

.method protected IsNewFirmwareVersion()Z
    .registers 3

    .prologue
    .line 637
    const-string v0, "CameraFirmware"

    const-string v1, "IsNewFirmwareVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckPhoneFWVersion()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->CheckCamFWVersion()I

    move-result v1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected getCamFWVendor()Ljava/lang/String;
    .registers 6

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, cameraFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 609
    .local v1, cameraFWvendor:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 610
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 611
    const-string v2, "CameraFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCamFWVendor() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-object v1
.end method

.method protected getPhoneFWVendor()Ljava/lang/String;
    .registers 6

    .prologue
    .line 616
    const/4 v0, 0x0

    .line 617
    .local v0, phoneFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 618
    .local v1, phoneFWvendor:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v0

    .line 619
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 621
    const-string v2, "CameraFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneFWVendor() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-object v1
.end method

.method protected getUpdateCount(Ljava/lang/String;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 550
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 552
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected hideUpdateProgress()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setContentView(I)V

    .line 122
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->init()V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 498
    const-string v0, "CameraFirmware"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 500
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 320
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sparse-switch p1, :sswitch_data_22

    .line 329
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1f
    return v0

    .line 324
    :sswitch_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 321
    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_20
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 333
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sparse-switch p1, :sswitch_data_22

    .line 342
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1f
    return v0

    .line 337
    :sswitch_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 334
    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_20
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 484
    const-string v0, "CameraFirmware"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 489
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->releaseCamera()V

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 494
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 473
    const-string v0, "CameraFirmware"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/sec/android/app/camerafirmware/CameraDeviceController;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/CameraDeviceController;->openCamera()Z

    move-result v0

    if-nez v0, :cond_21

    .line 475
    const-string v0, "CameraFirmware"

    const-string v1, "onResume - camera is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const v0, 0x7f070011

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 480
    :cond_21
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 481
    return-void
.end method

.method protected setUpdateCount(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "count"

    .prologue
    .line 541
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 547
    return-void
.end method

.method protected showUpdateProgress()V
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->showUpdateProgress(Z)V

    .line 347
    return-void
.end method

.method protected showUpdateProgress(Z)V
    .registers 4
    .parameter "isDump"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_21

    .line 351
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/camerafirmware/CameraFirmware$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$2;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 370
    :cond_21
    if-nez p1, :cond_38

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Now Updating... Warning!\nDo not turn off!\nIt will take sometime."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    :goto_2a
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_37

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 379
    :cond_37
    return-void

    .line 374
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Now Dumping... Warning!\nDo not turn off!\nIt will take sometime."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method protected startUpdateThread()V
    .registers 3

    .prologue
    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    .line 443
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/sec/android/app/camerafirmware/CameraFirmware$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware$3;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 448
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 449
    return-void
.end method

.method protected updateFirmwareUpdateCount()V
    .registers 5

    .prologue
    .line 530
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    if-ne v1, v2, :cond_32

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 532
    .local v0, updateCount:I
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setUpdateCount(Ljava/lang/String;I)V

    .line 537
    :goto_13
    const-string v1, "CameraFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFirmwareUpdateCount - PREF_KEY_UPCOUNT_ENG:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 534
    .end local v0           #updateCount:I
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG_FRONT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 535
    .restart local v0       #updateCount:I
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG_FRONT:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->setUpdateCount(Ljava/lang/String;I)V

    goto :goto_13
.end method
