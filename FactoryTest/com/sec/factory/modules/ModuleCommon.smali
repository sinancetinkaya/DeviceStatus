.class public Lcom/sec/factory/modules/ModuleCommon;
.super Lcom/sec/factory/modules/ModuleObject;
.source "ModuleCommon.java"


# static fields
.field private static IS_FACTORY_MODE:Z

.field private static mInstance:Lcom/sec/factory/modules/ModuleCommon;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static final mSalesCode:Ljava/lang/String;


# instance fields
.field final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

.field private final HDCP_KEBOX_SIZE:J

.field private final WIDEVINE_KEBOX_SIZE:J

.field private isCPName_IMC:Z

.field private isMSM8260A:Z

.field private isMSM8960:Z

.field private isPegaPrime:Z

.field private isPegasus:Z

.field private isSLSI:Z

.field private isU8420:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sput-object v2, Lcom/sec/factory/modules/ModuleCommon;->mInstance:Lcom/sec/factory/modules/ModuleCommon;

    .line 51
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommon;->mSalesCode:Ljava/lang/String;

    .line 604
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/factory/modules/ModuleCommon;->IS_FACTORY_MODE:Z

    .line 933
    sput-object v2, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    const-string v0, "ModuleCommon"

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    const-string v0, "MSM8960"

    const-string v3, "CHIPSET_NAME"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isMSM8960:Z

    .line 31
    const-string v0, "MSM8260A"

    const-string v3, "CHIPSET_NAME"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isMSM8260A:Z

    .line 32
    const-string v0, "Pegasus"

    const-string v3, "CHIPSET_NAME"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isPegasus:Z

    .line 33
    const-string v0, "PegaPrime"

    const-string v3, "CHIPSET_NAME"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isPegaPrime:Z

    .line 34
    const-string v0, "IMC"

    const-string v3, "CHIPSET_NAME_CP"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isCPName_IMC:Z

    .line 35
    const-string v0, "U8420"

    const-string v3, "CHIPSET_NAME"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isU8420:Z

    .line 36
    const-string v0, "S.LSI"

    const-string v3, "CHIPSET_MANUFACTURE"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isSLSI:Z

    .line 815
    const-wide/16 v3, 0x90

    iput-wide v3, p0, Lcom/sec/factory/modules/ModuleCommon;->WIDEVINE_KEBOX_SIZE:J

    .line 816
    const-wide/16 v3, 0x280

    iput-wide v3, p0, Lcom/sec/factory/modules/ModuleCommon;->HDCP_KEBOX_SIZE:J

    .line 898
    const-string v0, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .line 57
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "ModuleCommon"

    const-string v4, "Create ModuleCommon"

    invoke-static {v0, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v7, Ljava/io/File;

    const-string v0, "EFS_FACTORYAPP_ROOT_PATH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, mEfs_Root_Dir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 62
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "ModuleCommon"

    const-string v4, "Create EFS_FACTORYAPP_ROOT_PATH directory..."

    invoke-static {v0, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "EFS_FACTORYAPP_ROOT_PATH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->mkDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 64
    const-string v0, "EFS_FACTORYAPP_ROOT_PATH"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/sec/factory/support/Support$Kernel;->setPermission(Ljava/lang/String;ZZZZZZ)Z

    .line 68
    :cond_b5
    return-void
.end method

.method private checkTopActivity()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, activityManager:Landroid/app/ActivityManager;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/sec/factory/modules/ModuleCommon;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activityManager:Landroid/app/ActivityManager;
    check-cast v0, Landroid/app/ActivityManager;

    .line 89
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, runningtask:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, topActivity:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "topActivity: "

    invoke-static {v3, v6, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "com.sec.factory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 93
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "checkTopActivity(): "

    const-string v6, "sendBroadcast"

    invoke-static {v3, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 96
    :goto_34
    return v3

    :cond_35
    move v3, v5

    goto :goto_34
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommon;
    .registers 2
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mInstance:Lcom/sec/factory/modules/ModuleCommon;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/sec/factory/modules/ModuleCommon;

    invoke-direct {v0, p0}, Lcom/sec/factory/modules/ModuleCommon;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/factory/modules/ModuleCommon;->mInstance:Lcom/sec/factory/modules/ModuleCommon;

    .line 74
    :cond_b
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mInstance:Lcom/sec/factory/modules/ModuleCommon;

    return-object v0
.end method

.method private isEnabledApplication(Ljava/lang/String;)Z
    .registers 5
    .parameter "package_name"

    .prologue
    const/4 v1, 0x0

    .line 972
    sget-object v2, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 974
    .local v0, state:I
    packed-switch v0, :pswitch_data_e

    .line 982
    :goto_a
    :pswitch_a
    return v1

    .line 980
    :pswitch_b
    const/4 v1, 0x1

    goto :goto_a

    .line 974
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private isExistApplication(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    .line 958
    const/4 v0, 0x1

    .line 961
    :try_start_1
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_7

    .line 966
    :goto_6
    return v0

    .line 962
    :catch_7
    move-exception v0

    .line 963
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isExistApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isU8420()Z
    .registers 4

    .prologue
    .line 414
    const-string v0, "montblanc"

    const-string v1, "ro.product.board"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setApplicationState(Ljava/lang/String;I)V
    .registers 5
    .parameter "package_name"
    .parameter "state"

    .prologue
    .line 989
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 990
    return-void
.end method


# virtual methods
.method public CreateFactoyShortCut()V
    .registers 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "CreateFactoyShortCut"

    const-string v2, "send intent"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 727
    const-string v1, "com.sec.android.app.factorymode.shortcuts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v1, "com.sec.android.app.factorymode"

    const-string v2, "com.sec.android.app.factorymode.FactoryCTRL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 731
    const-string v1, "SUBACTION"

    const-string v2, "CREATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method public FactoryShortcutExists()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 902
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 903
    const/4 v6, 0x0

    .line 905
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 927
    :goto_1c
    return v6

    .line 911
    :cond_1d
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_87

    .line 913
    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 914
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 915
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "FactoryShortcutExists"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-eqz v0, :cond_28

    .line 917
    const-string v2, "Factory Mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 918
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "FactoryShortcutExists"

    const-string v3, "Factory Mode Exist"

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const/4 v0, 0x1

    .line 924
    :goto_66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 926
    :goto_69
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "FactoryShortcutExists"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnvalue :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    .line 927
    goto :goto_1c

    :cond_85
    move v0, v6

    goto :goto_66

    :cond_87
    move v0, v6

    goto :goto_69
.end method

.method public connectedJIG()Z
    .registers 6

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "connectedJIG"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "ANYWAY_JIG"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->isExistFileID(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 791
    const/4 v0, 0x0

    .line 798
    :goto_12
    return v0

    .line 793
    :cond_13
    const-string v0, "1C"

    .line 794
    const-string v0, "ANYWAY_JIG"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "connectedJIG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", JIG_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 798
    :goto_47
    const-string v1, "1C"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    .line 796
    :cond_52
    const-string v0, " "

    goto :goto_47
.end method

.method public disable15Test()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 698
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "15 Test Ready flag"

    const-string v2, "blocking"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.factorymode.15_test_ready_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 702
    const-string v1, "com.sec.android.app.factorymode.15_test_ready_flag"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public disableApplication(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 946
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 947
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 949
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommon;->isExistApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommon;->isEnabledApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 950
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "disableApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleCommon;->setApplicationState(Ljava/lang/String;I)V

    .line 953
    :cond_36
    return-void
.end method

.method public disableFtClient()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "disableFtClient"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.factorymode.ftclient"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 757
    const-string v1, "com.sec.android.app.factorymode.ftclient.key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 758
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 759
    const/4 v0, 0x1

    return v0
.end method

.method public enable15Test()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 688
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "15 Test Ready flag"

    const-string v2, "set"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.factorymode.15_test_ready_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 692
    const-string v1, "com.sec.android.app.factorymode.15_test_ready_flag"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    return v3
.end method

.method public enableApplication(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 936
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 937
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/sec/factory/modules/ModuleCommon;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 939
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommon;->isExistApplication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p1}, Lcom/sec/factory/modules/ModuleCommon;->isEnabledApplication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 940
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "enableApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/factory/modules/ModuleCommon;->setApplicationState(Ljava/lang/String;I)V

    .line 943
    :cond_36
    return-void
.end method

.method public enableFtClient()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 763
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "enableFtClient"

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.factorymode.ftclient"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 767
    const-string v1, "com.sec.android.app.factorymode.ftclient.key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 768
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    return v3
.end method

.method public getAutoRotateState()I
    .registers 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, state:I
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getAutoRotate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v0
.end method

.method public getBinaryType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 573
    const-string v1, "ro.build.type"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBinaryType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-object v0
.end method

.method public getBootVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 450
    const-string v1, "BOOT_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, ver:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBootVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-object v0
.end method

.method public getBootloaderVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 538
    const-string v1, "BOOTLOADER_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, ver:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getBootVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    return-object v0
.end method

.method public getCPName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 595
    const-string v0, "MAIN_CHIP_NAME_CP"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getCPName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-object v0
.end method

.method public getCSCVer()Ljava/lang/String;
    .registers 7

    .prologue
    .line 502
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, productModel:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 504
    const-string v2, "CSC_VERSION"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, ver:Ljava/lang/String;
    const-string v2, "m3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 507
    const/4 v2, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 509
    :cond_25
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "getCSCVer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-object v1
.end method

.method public getCalDate()Ljava/lang/String;
    .registers 6

    .prologue
    .line 544
    const-string v1, "EFS_CALDATE_PATH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, date:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getCalDate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCalDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-object v0
.end method

.method public getContentsVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 430
    const-string v1, "CONTENTS_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, ver:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getContentsVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-object v0
.end method

.method public getFactoryMode()Z
    .registers 2

    .prologue
    .line 607
    sget-boolean v0, Lcom/sec/factory/modules/ModuleCommon;->IS_FACTORY_MODE:Z

    return v0
.end method

.method public getFactoryModelName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 366
    const-string v1, "FACTORY_MODEL_MANE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getFactoryModelName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    if-eqz v0, :cond_32

    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 370
    const-string v1, "SAMSUNG-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_32
    return-object v0
.end method

.method public getFtClientEnableState()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 773
    .line 774
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.factorymode.ftclient"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_12

    .line 777
    const-string v2, "com.sec.android.app.factorymode.ftclient.key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 779
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "isFactoryModeCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return v0
.end method

.method public getHWRevision()Ljava/lang/String;
    .registers 6

    .prologue
    .line 321
    const-string v1, "HW_REVISION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, version:Ljava/lang/String;
    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 323
    const-string v1, "ro.revision"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_16
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getHWRevision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-object v0
.end method

.method public getHWVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, ver:Ljava/lang/String;
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isMSM8960:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isMSM8260A:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isPegasus:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isPegaPrime:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isCPName_IMC:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Lcom/sec/factory/modules/ModuleCommon;->isU8420:Z

    if-nez v1, :cond_48

    const-string v1, "HW_VER_EFS"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 347
    const-string v1, "EFS_HW_PATH"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_2d
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getHWver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-object v0

    .line 349
    :cond_48
    const-string v1, "HW_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method public getKeyLockState()I
    .registers 4

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLTEVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 418
    const-string v1, "LTE_VERSION"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, ver:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getLTEVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-object v0
.end method

.method public getMainChipName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 376
    const-string v0, ""

    .line 377
    .local v0, ap_name:Ljava/lang/String;
    const-string v4, "STANDARD_JB_SYSFS"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 378
    const-string v4, "MAIN_CHIP_NAME_AP_REAL"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_11
    const-string v1, ""

    .line 383
    .local v1, cp_name:Ljava/lang/String;
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 384
    const-string v4, "MAIN_CHIP_NAME_CP"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 387
    move-object v2, v0

    .line 388
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getMainChipName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 409
    .end local v2           #name:Ljava/lang/String;
    .local v3, name:Ljava/lang/String;
    :goto_41
    return-object v3

    .line 380
    .end local v1           #cp_name:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_42
    const-string v4, "MAIN_CHIP_NAME_AP"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 393
    .restart local v1       #cp_name:Ljava/lang/String;
    :cond_49
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->isConnectionModeNone()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 394
    move-object v2, v0

    .line 395
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getMainChipName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 396
    .end local v2           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto :goto_41

    .line 399
    .end local v3           #name:Ljava/lang/String;
    :cond_6c
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommon;->isU8420()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 400
    move-object v2, v1

    .line 401
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getMainChipName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 402
    .end local v2           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto :goto_41

    .line 406
    .end local v3           #name:Ljava/lang/String;
    :cond_8f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2       #name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getMainChipName"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 409
    .end local v2           #name:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    goto :goto_41
.end method

.method public getMainSWVer()Ljava/lang/String;
    .registers 8

    .prologue
    .line 515
    const-string v3, "ril.sw_ver"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, ver:Ljava/lang/String;
    const-string v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, mSalesCode:Ljava/lang/String;
    const-string v3, "CTC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 521
    const-string v3, "gsm.version.baseband"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, ctc_ver:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "getMainSWVer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CTCversion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .end local v0           #ctc_ver:Ljava/lang/String;
    :goto_42
    return-object v0

    .line 527
    :cond_43
    iget-object v3, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "getMainSWVer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 528
    goto :goto_42
.end method

.method public getModelName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 356
    const-string v1, "PRODUCT_NAME"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getModelName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz v0, :cond_32

    const-string v1, "SAMSUNG-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 360
    const-string v1, "SAMSUNG-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_32
    return-object v0
.end method

.method public getPDAVer()Ljava/lang/String;
    .registers 9

    .prologue
    .line 437
    const-string v4, "PDA_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, PDAver:Ljava/lang/String;
    const-string v4, "CONTENTS_VERSION"

    invoke-static {v4}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, Hiddenver:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lcom/sec/factory/modules/ModuleCommon;->mSalesCode:Ljava/lang/String;

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 440
    move-object v2, v0

    .line 444
    .local v2, tempver:Ljava/lang/String;
    :goto_1d
    move-object v3, v2

    .line 445
    .local v3, ver:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getPDAVer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-object v3

    .line 442
    .end local v2           #tempver:Ljava/lang/String;
    .end local v3           #ver:Ljava/lang/String;
    :cond_39
    move-object v2, v1

    .restart local v2       #tempver:Ljava/lang/String;
    goto :goto_1d
.end method

.method public getPhone2Ver()Ljava/lang/String;
    .registers 9

    .prologue
    .line 479
    const-string v4, "ro.product.model"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, productModel:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 481
    const-string v4, "ril.sw_ver"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, ver:Ljava/lang/String;
    const-string v4, "m3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 483
    const/4 v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 486
    :cond_27
    const-string v4, "ro.csc.sales_code"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, mSalesCode2:Ljava/lang/String;
    const-string v4, "CTC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 491
    const-string v4, "ril.sw_ver"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, ctc_ver:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getPhone2Ver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTCversion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v0           #ctc_ver:Ljava/lang/String;
    :goto_61
    return-object v0

    .line 497
    :cond_62
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getPhone2Ver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 498
    goto :goto_61
.end method

.method public getPhoneVer()Ljava/lang/String;
    .registers 9

    .prologue
    .line 457
    const-string v4, "ro.product.model"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, productModel:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string v4, "ril.sw_ver"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, ver:Ljava/lang/String;
    const-string v4, "m3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 461
    const/4 v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 463
    :cond_27
    const-string v4, "ro.csc.sales_code"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, mSalesCode:Ljava/lang/String;
    const-string v4, "CTC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 468
    const-string v4, "gsm.version.baseband"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, ctc_ver:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getPhoneVer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTCversion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .end local v0           #ctc_ver:Ljava/lang/String;
    :goto_61
    return-object v0

    .line 474
    :cond_62
    iget-object v4, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v5, "getPhoneVer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 475
    goto :goto_61
.end method

.method public getStandardVer()Ljava/lang/String;
    .registers 6

    .prologue
    .line 532
    const-string v1, "FACTORY_TEST_COMMAND"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, ver:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getStandardVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-object v0
.end method

.method public getUartPath()Ljava/lang/String;
    .registers 6

    .prologue
    .line 307
    const-string v1, "UART_SELECT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "getUartPath"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v0
.end method

.method public go15mode()V
    .registers 6

    .prologue
    .line 126
    const/16 v0, 0xf

    .line 127
    .local v0, FACTORY_TEST_START:I
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "go15mode"

    const-string v4, "Launch 15 test Activity"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.sec.factory"

    const-string v3, "com.sec.factory.app.factorytest.FactoryTestMain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModuleCommon;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method

.method public goIdle()V
    .registers 6

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "goIdle"

    const-string v4, "Launch Home Activity"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/sec/factory/modules/ModuleCommon;->checkTopActivity()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 103
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, stopFactoryIntent:Landroid/content/Intent;
    const-string v2, "com.sec.samsung.STOP_FACTORY_TEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1}, Lcom/sec/factory/modules/ModuleCommon;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    .end local v1           #stopFactoryIntent:Landroid/content/Intent;
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommon;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public goLcdtest()V
    .registers 5

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "goLcdtest"

    const-string v3, "Launch Lcd test Activity"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.lcdtest"

    const-string v2, "com.sec.android.app.lcdtest.Lcdtest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v0}, Lcom/sec/factory/modules/ModuleCommon;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public hdcpCheck(I)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 829
    .line 830
    packed-switch p1, :pswitch_data_66

    .line 849
    const-string v0, "NG"

    :goto_5
    return-object v0

    .line 832
    :pswitch_6
    const-string v0, "HDCP_CHECK_2_0"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 835
    :pswitch_d
    const-string v0, "HDCP_CHECK_1_3_KEYBOX"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFileLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 836
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "checkHDCPKey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-wide/16 v2, 0x280

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 838
    const-string v0, "OK"

    goto :goto_5

    .line 840
    :cond_36
    const-string v0, "NG"

    goto :goto_5

    .line 842
    :pswitch_39
    const-string v0, "HDCP_CHECK_WIDEVINE_KEYBOX"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Kernel;->getFileLength(Ljava/lang/String;)J

    move-result-wide v0

    .line 843
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "checkWidevineKey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-wide/16 v2, 0x90

    cmp-long v0, v0, v2

    if-nez v0, :cond_62

    .line 845
    const-string v0, "OK"

    goto :goto_5

    .line 847
    :cond_62
    const-string v0, "NG"

    goto :goto_5

    .line 830
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_d
        :pswitch_d
        :pswitch_39
    .end packed-switch
.end method

.method public hdcpReadSN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 854
    const-string v0, "HDCP_SN"

    invoke-static {v0}, Lcom/sec/factory/support/Support$Properties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is15TestEnable()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 708
    .line 709
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.factorymode.15_test_ready_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_12

    .line 712
    const-string v2, "com.sec.android.app.factorymode.15_test_ready_flag"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 714
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "is15TestEnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEST_READY_FLAG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return v0
.end method

.method public isConnectionModeNone()Z
    .registers 7

    .prologue
    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, ret:Z
    const/4 v0, 0x0

    .line 566
    .local v0, mConnectionMode:Ljava/lang/String;
    const-string v2, "MODEL_COMMUNICATION_MODE"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "isConnectionModeNone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConnectionMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    .line 569
    :goto_2b
    return v1

    .line 568
    :cond_2c
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public isFactoryMode()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 616
    const-string v1, "ro.product.model"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 618
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "isFactoryMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProductModel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v2, "I9070"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 620
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "isFactoryMode"

    const-string v3, "isFactoryMode GT-I9070 =false:mode"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_3c
    :goto_3c
    return v0

    .line 625
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->readFactoryMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->readFactoryMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 626
    :cond_4f
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isFactoryMode"

    const-string v2, "isFactoryMode=true:mode"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    goto :goto_3c
.end method

.method public isFactorySim()Z
    .registers 5

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 637
    const-string v1, "999999999999999"

    .line 638
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_27

    const-string v1, "999999999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 641
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isFactorySim"

    const-string v2, "isFactorySim == true"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x1

    .line 650
    :goto_26
    return v0

    .line 644
    :cond_27
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isFactorySim"

    const-string v2, "isFactorySim == false"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "isFactorySim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFactorySim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getFactoryMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "by Keystring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getFactoryMode()Z

    move-result v0

    goto :goto_26
.end method

.method public isFirstBoot()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 671
    .line 672
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.factorymode.first_boot_flag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 674
    if-eqz v1, :cond_12

    .line 675
    const-string v2, "factorymode.shortcut.skipped"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 677
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "isFirstBoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return v0
.end method

.method public isVoiceCapable()Z
    .registers 6

    .prologue
    .line 579
    const/4 v0, 0x1

    .line 580
    sget-object v1, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 581
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 584
    :cond_12
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "isVoiceCapable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return v0
.end method

.method public readBatteryType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 215
    const-string v1, "BATTERY_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readBatteryType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v0
.end method

.method public readCameraFrontFWver()Ljava/lang/String;
    .registers 6

    .prologue
    .line 239
    const-string v1, "CAMERA_FRONT_FW_VER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readCameraFrontFWver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v0
.end method

.method public readCameraFrontType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 227
    const-string v1, "CAMERA_FRONT_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readCameraFrontType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v0
.end method

.method public readCameraRearFWver()Ljava/lang/String;
    .registers 6

    .prologue
    .line 233
    const-string v1, "CAMERA_REAR_FW_VER"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readCameraRearFWver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0
.end method

.method public readCameraRearType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 221
    const-string v1, "CAMERA_REAR_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readCameraRearType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-object v0
.end method

.method public readCpuOnline()Ljava/lang/String;
    .registers 6

    .prologue
    .line 197
    const-string v1, "CPU_ONLINE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readCpuOnline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v0
.end method

.method public readFactoryMode()Ljava/lang/String;
    .registers 6

    .prologue
    .line 251
    const-string v1, "FACTORY_MODE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readFactoryMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v0
.end method

.method public readHDMITestResult()Ljava/lang/String;
    .registers 6

    .prologue
    .line 245
    const-string v1, "HDMI_TEST_RESULT"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readHDMICheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-object v0
.end method

.method public readKeyStringBlock()Ljava/lang/String;
    .registers 6

    .prologue
    .line 273
    const-string v1, "KEYSTRING_BLOCK"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, block:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readKeyStringBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "block="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object v0
.end method

.method public readLcdType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 209
    const-string v1, "LCD_TYPE"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readLcdType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public readPrePay()Ljava/lang/String;
    .registers 6

    .prologue
    .line 262
    const-string v1, "PRE_PAY"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readPrePay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public readProxiADC()Ljava/lang/String;
    .registers 6

    .prologue
    .line 203
    const-string v1, "PROXI_SENSOR_ADC"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readProxiADC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object v0
.end method

.method public readProxiOffset()Ljava/lang/String;
    .registers 7

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, proxiOffestValue:[Ljava/lang/String;
    const-string v2, "PROXI_SENSOR_OFFSET"

    invoke-static {v2}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 192
    .local v1, type:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "readProxiOffset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v1
.end method

.method public readmBaroDelta()Ljava/lang/String;
    .registers 6

    .prologue
    .line 284
    const-string v1, "BAROMETE_DELTA"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Kernel;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, delta:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "readmBaroDelta"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-object v0
.end method

.method public setAutoRotate(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setAutoRotate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void
.end method

.method public setCalDate(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setCalDate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCalDate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "EFS_CALDATE_PATH"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFactoryMode()V
    .registers 2

    .prologue
    .line 611
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/factory/modules/ModuleCommon;->IS_FACTORY_MODE:Z

    .line 612
    return-void
.end method

.method public setFirstBoot()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 660
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setFirstBoot"

    const-string v2, "set"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/sec/factory/modules/ModuleCommon;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.factorymode.first_boot_flag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 664
    const-string v1, "factorymode.shortcut.skipped"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 667
    const/4 v0, 0x1

    return v0
.end method

.method public setHDMIPatternSwitch(Ljava/lang/String;)Z
    .registers 7
    .parameter "mode"

    .prologue
    .line 171
    const-string v1, "HDMI_PATTERN_SWITCH"

    invoke-static {v1, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 172
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setHDMIPatternSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return v0
.end method

.method public setHWVer(Ljava/lang/String;)Z
    .registers 7
    .parameter "value"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setHWVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, hw_version:Ljava/lang/String;
    const-string v1, "~"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "setHWVer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "EFS_HW_PATH"

    invoke-static {v1, v0}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setKeyLock(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/sec/factory/modules/ModuleCommon;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SHOULD_SHUT_DOWN_FLAG"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void
.end method

.method public setSwitchFactoryState()V
    .registers 4

    .prologue
    .line 995
    const-string v0, "FACTORY_START"

    .line 996
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/factory/modules/ModuleCommon;->isSLSI:Z

    if-eqz v0, :cond_1d

    .line 997
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSwitchFactoryState"

    const-string v2, "SwitchFactory= + FACTORY_START"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v0, "SWITCH_FACTORY"

    const-string v1, "FACTORY_START"

    invoke-static {v0, v1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1002
    :goto_1c
    return-void

    .line 1000
    :cond_1d
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setSwitchFactoryState"

    const-string v2, "Not SLSI model"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public setUartPath(Ljava/lang/String;)Z
    .registers 6
    .parameter "path"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "setUartPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "UART_SELECT"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sleepThread(I)V
    .registers 7
    .parameter "time"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "sleepThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread sleep during : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    int-to-long v1, p1

    :try_start_21
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_25

    .line 84
    :goto_24
    return-void

    .line 81
    :catch_25
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public writeFactoryMode(Ljava/lang/String;)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeFactoryMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "FACTORY_MODE"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    return-void
.end method

.method public writeKeyStringBlock(Ljava/lang/String;)V
    .registers 6
    .parameter "block"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writeKeyStringBlock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyStringBlock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "KEYSTRING_BLOCK"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    return-void
.end method

.method public writePrePay(Ljava/lang/String;)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writePrePay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "PRE_PAY"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    return-void
.end method

.method public writemBaroDelta(Ljava/lang/String;)V
    .registers 6
    .parameter "delta"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleCommon;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "writemBaroDelta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BaroDelta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "BAROMETE_DELTA"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    const-string v0, "BAROMETE_CALIBRATION"

    invoke-static {v0, p1}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    return-void
.end method
