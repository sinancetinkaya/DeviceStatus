.class public Lcom/android/settings/PenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packagelist:[Ljava/lang/String;


# instance fields
.field protected MESSAGE_DELAY:I

.field private mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

.field private mOpenQuicknote:Landroid/preference/CheckBoxPreference;

.field private mPenApplication:Landroid/preference/ListPreference;

.field private mPenApplicationEntries:Ljava/util/Vector;

.field private mPenApplicationValues:Ljava/util/Vector;

.field private mPenBatterySaving:Landroid/preference/CheckBoxPreference;

.field private mPenDetachSound:Landroid/preference/PreferenceScreen;

.field private mPenGestureGuide:Landroid/preference/CheckBoxPreference;

.field private mPenHovering:Landroid/preference/SwitchPreferenceScreen;

.field private mPenHoveringSound:Landroid/preference/CheckBoxPreference;

.field protected mPenHoveringUncheckerHandler:Landroid/os/Handler;

.field private mPenKeeperNotiDialog:Landroid/app/AlertDialog;

.field private mPenPreferredHand:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.launcher,com.android.launcher2.Launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snotebook,com.infraware.filemanager.FmFileTreeListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.calendar,com.android.calendar.AllInOneActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.acrodea.crayonphysics,com.acrodea.crayonphysics.crayonphysics"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "air.com.adobe.pstouch.oem1,air.com.adobe.pstouch.oem1.AppEntry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.infraware.PolarisOfficeStdForTablet,com.infraware.splash.SplashActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.diotek.mini_penmemo,com.diotek.mini_penmemo.Mini_PenMemo_Service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    .line 290
    new-instance v0, Lcom/android/settings/PenSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PenSettingsMenu$1;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private makePenNotificationList()V
    .registers 4

    .prologue
    .line 416
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bfb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bfc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bfd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bfe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .registers 4

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PenSettingsMenu$3;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenSettingsMenu$2;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    const-string v1, "PenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method private setPenApplicationEntriesAndValues()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 374
    const/4 v8, 0x0

    .line 378
    .local v8, tempPkgList:[Ljava/lang/String;
    sget-object v8, Lcom/android/settings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 381
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    array-length v9, v8

    if-ge v2, v9, :cond_b1

    .line 382
    aget-object v6, v8, v2

    .line 383
    .local v6, packageInfo:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 384
    .local v3, index:I
    if-lez v3, :cond_61

    .line 385
    invoke-virtual {v6, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, packageName:Ljava/lang/String;
    const-string v9, "PenSettingsMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 389
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 390
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, appName:Ljava/lang/String;
    const-string v9, "TouchWiz Home"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_49

    .line 393
    const-string v0, "S pen page"

    .line 395
    :cond_49
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_53} :catch_56
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_53} :catch_b2

    .line 381
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #mPm:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 397
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_56
    move-exception v1

    .line 398
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PenSettingsMenu"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 403
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_61
    const-string v9, "None"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 404
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c03

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_79
    :goto_79
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 405
    :cond_7f
    const-string v9, "Shortcuts toolbar"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    .line 406
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c04

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 407
    :cond_98
    const-string v9, "S pen page"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 408
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090c05

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 413
    .end local v3           #index:I
    .end local v6           #packageInfo:Ljava/lang/String;
    :cond_b1
    return-void

    .line 399
    .restart local v3       #index:I
    .restart local v6       #packageInfo:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_b2
    move-exception v9

    goto :goto_53
.end method

.method private updateDetachNotiPref()V
    .registers 5

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 432
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 433
    const/4 v1, 0x1

    .line 434
    const-string v2, "PenSettingsMenu"

    const-string v3, "updateDetachNotiPref() file exist error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1b
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method private updatePenApplicationPref()V
    .registers 8

    .prologue
    .line 448
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, currentValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4a

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, currentEntry:Ljava/lang/String;
    :goto_18
    const-string v4, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePenApplicationPref() - currentValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / currentEntry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v3, 0x0

    .line 454
    .local v3, summary:Ljava/lang/String;
    const-string v4, "None"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 455
    move-object v3, v0

    .line 460
    :goto_44
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    return-void

    .line 450
    .end local v0           #currentEntry:Ljava/lang/String;
    .end local v3           #summary:Ljava/lang/String;
    :cond_4a
    const/4 v0, 0x0

    goto :goto_18

    .line 457
    .restart local v0       #currentEntry:Ljava/lang/String;
    .restart local v3       #summary:Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090c02

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, s:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_44
.end method

.method private updateState()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    const-string v0, "PenSettingsMenu"

    const-string v3, "updateState() "

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateDetachNotiPref()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pen_hovering"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    :cond_2a
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_59

    move v0, v1

    :goto_39
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5b

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 223
    return-void

    :cond_59
    move v0, v2

    .line 220
    goto :goto_39

    :cond_5b
    move v1, v2

    .line 221
    goto :goto_4a
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, hoveringPointer:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 201
    .local v1, hoveringInformationPreview:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, hoveringIconLabel:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 203
    .local v2, hoveringListScroll:I
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-nez v3, :cond_56

    if-nez v1, :cond_56

    if-nez v0, :cond_56

    if-nez v2, :cond_56

    .line 205
    const/4 v4, 0x1

    .line 207
    :cond_56
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    const-string v0, "PenSettingsMenu"

    const-string v3, "onCreate() "

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->addPreferencesFromResource(I)V

    .line 120
    const-string v0, "pen_hand_side"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    .line 121
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hand_side"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_4b
    const-string v0, "pen_deatachment_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->makePenNotificationList()V

    .line 130
    const-string v0, "battery_saving"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    .line 131
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_detect_mode_disabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d5

    move v0, v1

    :goto_76
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->setPenApplicationEntriesAndValues()V

    .line 135
    const-string v0, "application"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    .line 136
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 137
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_applications"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    const-string v0, "open_quick_note"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    .line 146
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_detach_application"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d8

    move v0, v1

    :goto_f2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    const-string v0, "pen_hovering_menu"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1db

    move v0, v1

    :goto_10e
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v0

    if-ne v0, v1, :cond_125

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "pen_hovering"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_125
    const-string v0, "pen_hovering_sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    .line 160
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_sound"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1de

    move v0, v1

    :goto_143
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    const-string v0, "pen_gesture_guide"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    .line 164
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_gesture_guide"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e1

    move v0, v1

    :goto_164
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    const-string v0, "loss_prevention_alert"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_detachment_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1e3

    :goto_18d
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_19f
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pen_help_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pen_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_1bf
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_DisablePenDetachmentAlert"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 188
    :cond_1d4
    return-void

    :cond_1d5
    move v0, v2

    .line 132
    goto/16 :goto_76

    :cond_1d8
    move v0, v2

    .line 147
    goto/16 :goto_f2

    :cond_1db
    move v0, v2

    .line 153
    goto/16 :goto_10e

    :cond_1de
    move v0, v2

    .line 161
    goto/16 :goto_143

    :cond_1e1
    move v0, v2

    .line 165
    goto :goto_164

    :cond_1e3
    move v1, v2

    .line 172
    goto :goto_18d
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 227
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, key:Ljava/lang/String;
    const-string v3, "pen_hand_side"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 230
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, value:I
    :try_start_13
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(KEY_PEN_PREFERRED_HAND): value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hand_side"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 235
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_43} :catch_44

    .line 287
    .end local v2           #value:I
    :cond_43
    :goto_43
    return v7

    .line 237
    .restart local v2       #value:I
    :catch_44
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 240
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_4d
    const-string v3, "pen_deatachment_sound"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 252
    const-string v3, "pen_hovering_menu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 253
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 256
    .local v2, value:Z
    :try_start_63
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange(KEY_PEN_HOVERING_MENU): value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-ne v2, v7, :cond_9d

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v7, :cond_9d

    .line 259
    const-string v3, "PenSettingsMenu"

    const-string v4, "Hovering mode changed ignored cause all sub options are disabled "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_93} :catch_94

    goto :goto_43

    .line 273
    :catch_94
    move-exception v0

    .line 274
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 262
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_9d
    if-eqz v2, :cond_bb

    .line 263
    :try_start_9f
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/PenHoveringEnabler;->isEnabledScreenReaderService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->makeTalkBackDisablePopup()V

    .line 271
    :goto_ac
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    goto :goto_43

    .line 266
    :cond_b0
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_ac

    .line 269
    :cond_bb
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_c5} :catch_94

    goto :goto_ac

    .line 276
    .end local v2           #value:Z
    .restart local p2
    :cond_c6
    const-string v3, "application"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    move-object v2, p2

    .line 277
    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, value:Ljava/lang/String;
    :try_start_d1
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_applications"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 282
    const-string v3, "PenSettingsMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pen application : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_applications"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_104} :catch_106

    goto/16 :goto_43

    .line 283
    :catch_106
    move-exception v0

    .line 284
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-boolean v3, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v3, :cond_43

    const-string v3, "PenSettingsMenu"

    const-string v4, "could not persist pen application setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 322
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 323
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    .line 324
    .local v2, value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    if-eqz v2, :cond_42

    :goto_18
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 325
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen_hovering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v2           #value:Z
    :cond_3d
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_41
    :goto_41
    return v3

    .restart local v2       #value:Z
    :cond_42
    move v3, v4

    .line 324
    goto :goto_18

    .line 326
    .end local v2           #value:Z
    :cond_44
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 327
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 328
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    if-eqz v2, :cond_87

    move v5, v3

    :goto_5b
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    if-eqz v2, :cond_89

    move v5, v3

    :goto_61
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 330
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery saving : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detect_mode_disabled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_87
    move v5, v4

    .line 328
    goto :goto_5b

    :cond_89
    move v5, v4

    .line 329
    goto :goto_61

    .line 332
    .end local v2           #value:Z
    :cond_8b
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 333
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 334
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detach_application"

    if-eqz v2, :cond_c9

    move v5, v3

    :goto_a2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen detach application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detach_application"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :cond_c9
    move v5, v4

    .line 334
    goto :goto_a2

    .line 337
    .end local v2           #value:Z
    :cond_cb
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 338
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 339
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    if-eqz v2, :cond_109

    move v5, v3

    :goto_e2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen sound : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering_sound"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :cond_109
    move v5, v4

    .line 339
    goto :goto_e2

    .line 342
    .end local v2           #value:Z
    :cond_10b
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14b

    .line 343
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 344
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_gesture_guide"

    if-eqz v2, :cond_149

    move v5, v3

    :goto_122
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pen Gesture Guide : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_gesture_guide"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :cond_149
    move v5, v4

    .line 344
    goto :goto_122

    .line 352
    .end local v2           #value:Z
    :cond_14b
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 353
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 354
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    if-eqz v2, :cond_1a5

    move v5, v3

    :goto_162
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-direct {p0, v2}, Lcom/android/settings/PenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 356
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loss prevention alert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_alert"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings_pen_keeper_noti_pref"

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_41

    .line 360
    const-string v5, "PenKeeperDoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 361
    .local v0, doNotShow:Z
    if-nez v0, :cond_41

    if-eqz v2, :cond_41

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->showPenKeeperNotiDialog()V

    goto/16 :goto_41

    .end local v0           #doNotShow:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1a5
    move v5, v4

    .line 354
    goto :goto_162
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 192
    const-string v0, "PenSettingsMenu"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    .line 195
    return-void
.end method

.method public showPenKeeperNotiDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 477
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 479
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_15

    .line 480
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 481
    iput-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 484
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 485
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040050

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 486
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b00c6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 488
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0909f8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 489
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 490
    const v4, 0x7f0909f7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 491
    const v4, 0x7f0905c4

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 494
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 496
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/PenSettingsMenu$4;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/PenSettingsMenu$4;-><init>(Lcom/android/settings/PenSettingsMenu;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 507
    return-void
.end method
