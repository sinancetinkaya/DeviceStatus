.class public Lcom/sec/android/app/camerafirmware/CameraFirmware_user;
.super Lcom/sec/android/app/camerafirmware/CameraFirmware;
.source "CameraFirmware_user.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToast:Landroid/widget/Toast;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    .line 52
    new-instance v0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$1;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V

    iput-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private DialogPopup(I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "messageId"

    .prologue
    .line 243
    const-string v1, "CameraFirmware_user"

    const-string v2, "DialogPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

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

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    const v1, 0x7f070002

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$2;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    const-string v1, "No"

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$3;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V

    return-void
.end method

.method private dialogErrorPopup(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 271
    const-string v1, "CameraFirmware_user"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 276
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

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

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    const v1, 0x7f070001

    new-instance v2, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user$4;-><init>(Lcom/sec/android/app/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    .line 288
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 289
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 214
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;->resetFWInfo()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mFront:Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;

    invoke-virtual {v0}, Lcom/sec/android/app/camerafirmware/FirmwareFileMgrFront;->resetFWInfo()V

    .line 226
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->init()V

    .line 50
    return-void
.end method

.method protected updateFirmwareUpdateCount()V
    .registers 5

    .prologue
    .line 231
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    iget-object v2, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->mRear:Lcom/sec/android/app/camerafirmware/FirmwareFileMgr;

    if-ne v1, v2, :cond_32

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 233
    .local v0, updateCount:I
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->setUpdateCount(Ljava/lang/String;I)V

    .line 239
    :goto_13
    const-string v1, "CameraFirmware_user"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFirmwareUpdateCount - PREF_KEY_UPCOUNT_USER:["

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

    .line 240
    return-void

    .line 235
    .end local v0           #updateCount:I
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->PREF_KEY_UPCOUNT_USER_FRONT:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 236
    .restart local v0       #updateCount:I
    iget-object v1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->PREF_KEY_UPCOUNT_USER_FRONT:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware_user;->setUpdateCount(Ljava/lang/String;I)V

    goto :goto_13
.end method
