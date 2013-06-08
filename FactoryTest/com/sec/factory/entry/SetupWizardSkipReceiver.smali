.class public Lcom/sec/factory/entry/SetupWizardSkipReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetupWizardSkipReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;
    }
.end annotation


# static fields
.field private static final BASE_SETUPWIZARD_LIST:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

.field private static isReceivedEnalbleIntent:Z

.field private static mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field mHandler:Landroid/os/Handler;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .prologue
    const/4 v14, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x3

    .line 63
    sput-boolean v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isReceivedEnalbleIntent:Z

    .line 108
    const/16 v0, 0xb

    new-array v12, v0, [Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "*"

    const-string v3, "com.sec.android.app.setupwizard"

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    new-instance v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v7, "*"

    const-string v8, "*"

    const-string v9, "com.google.android.setupwizard"

    const-string v10, "com.google.android.setupwizard.SetupWizardActivity"

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v12, v5

    new-instance v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v7, "*"

    const-string v8, "*"

    const-string v9, "com.google.android.setupwizard"

    const-string v10, "com.google.android.setupwizard.WelcomeActivity"

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v12, v14

    new-instance v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v6, "*"

    const-string v7, "*"

    const-string v8, "com.sec.android.app.SecSetupWizard"

    const-string v9, "com.sec.android.app.SecSetupWizard.SecSetupWizardActivity"

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v12, v13

    const/4 v0, 0x4

    new-instance v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v6, "*"

    const-string v7, "*"

    const-string v8, "com.dashwire.config"

    const-string v9, "com.dashwire.config.ui.SetupWizardActivity"

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v5, v12, v0

    const/4 v6, 0x5

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "DCM"

    const-string v3, "com.nttdocomo.android.mascot"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    const/4 v6, 0x6

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "DCM"

    const-string v3, "com.nttdocomo.android.applicationmanager"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    const/4 v6, 0x7

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "DCM"

    const-string v3, "com.nttdocomo.android.initialization"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    const/16 v6, 0x8

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "DCM"

    const-string v3, "com.nttdocomo.android.paletteui"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    const/16 v6, 0x9

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "*"

    const-string v3, "com.samsung.cce"

    const-string v4, "com.samsung.cce.DefaultActivity"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    const/16 v6, 0xa

    new-instance v0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    const-string v1, "*"

    const-string v2, "*"

    const-string v3, "com.samsung.cce"

    const-string v4, "com.samsung.cce.CIQ_InfoActivity"

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    sput-object v12, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->BASE_SETUPWIZARD_LIST:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mHandler:Landroid/os/Handler;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    .line 42
    return-void
.end method

.method private CloseSetupWizard()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 212
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "CloseSetupWizard "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 214
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 221
    .local v1, componentSetting:I
    const/4 v3, 0x0

    .local v3, idx:I
    :goto_12
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    array-length v5, v5

    if-ge v3, v5, :cond_15f

    .line 222
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PackageName= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ActivityName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Model="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$200(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, v3}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isTargetComponent(I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 221
    :cond_6b
    :goto_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 230
    :cond_6e
    iget v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_be

    .line 231
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "No type set. Default settng"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_7a
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_fb

    .line 239
    :try_start_84
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_8f} :catch_d2

    move-result v1

    .line 248
    if-eq v1, v8, :cond_6b

    .line 249
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing this component for factory mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_6b

    .line 232
    :cond_be
    iget v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    sget-object v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v6, v6, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSetupwizType:I
    invoke-static {v6}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$300(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)I

    move-result v6

    if-eq v5, v6, :cond_7a

    .line 233
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "Next Loop since the current component is not included in the list"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 241
    :catch_d2
    move-exception v2

    .line 242
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException : Can\'t find  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " This component might not be installed!!)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 257
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_fb
    :try_start_fb
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_106} :catch_136

    move-result v1

    .line 266
    if-eq v1, v8, :cond_6b

    .line 267
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finishing this component for factory mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_6b

    .line 259
    :catch_136
    move-exception v2

    .line 260
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException : Can\'t find  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v7, v7, v3

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " This package might not be installed!!)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 277
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_15f
    iget-object v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 279
    .local v0, bRet:Z
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CloseSetupWizard(Settings.Secure.putInt..Settings.Secure.DEVICE_PROVISIONED) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, v10}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->setForcedSkipped(Z)V

    .line 285
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close DEVICE_PROVISIONED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private EnableSetupWizard()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 337
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "EnableSetupWizard()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 341
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_10
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    array-length v4, v4

    if-ge v2, v4, :cond_110

    .line 345
    :try_start_15
    invoke-direct {p0, v2}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isTargetComponent(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 341
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 349
    :cond_1e
    iget v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a8

    .line 350
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "No type set. Default settng"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_2a
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_c6

    .line 357
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v4, v8, :cond_bd

    .line 358
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 362
    const-string v4, "SetupWizardSkipReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup_Wizard (getComponentEnabledSetting) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v6, v6, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v6}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-boolean v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isReceivedEnalbleIntent:Z

    if-nez v4, :cond_1b

    .line 367
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 369
    .local v1, i:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 370
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_9c} :catch_9e

    goto/16 :goto_1b

    .line 393
    .end local v1           #i:Landroid/content/Intent;
    :catch_9e
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "IllegalArgumentException : Can\'t find ComponentName (setupwizard may not be installed!!)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 351
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_a8
    :try_start_a8
    iget v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSetupwizType:I
    invoke-static {v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$300(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)I

    move-result v5

    if-eq v4, v5, :cond_2a

    .line 352
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "Next Loop since the current component is not included in the list"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 375
    :cond_bd
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "No need to reset setupwizard. ComponentEnabledState is still avaiable!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 379
    :cond_c6
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_107

    .line 380
    sget-object v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v4, v4, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 384
    const-string v4, "SetupWizardSkipReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup_Wizard (getApplicationEnabledSetting) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v6, v6, v2

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 388
    :cond_107
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "No need to reset setupwizard. ApplicationEnabledState is still avaiable!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_10e} :catch_9e

    goto/16 :goto_1b

    .line 400
    :cond_110
    invoke-direct {p0, v7}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->setForcedSkipped(Z)V

    .line 405
    new-instance v4, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;

    iget-object v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$1;-><init>(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;

    .line 419
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "--registerContentObserver-- : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 423
    return-void
.end method

.method static synthetic access$400(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/factory/entry/SetupWizardSkipReceiver;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/factory/entry/SetupWizardSkipReceiver;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContentObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method public static getFactoryMode()Z
    .registers 5

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, userMode:Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_22

    move-result-object v1

    .line 473
    :goto_f
    if-eqz v1, :cond_2d

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 474
    const-string v2, "SetupWizardSkipReceiver"

    const-string v3, "User Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v2, 0x0

    .line 479
    :goto_21
    return v2

    .line 468
    :catch_22
    move-exception v0

    .line 469
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 470
    const-string v2, "SetupWizardSkipReceiver"

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 478
    .end local v0           #e1:Ljava/io/IOException;
    :cond_2d
    const-string v2, "SetupWizardSkipReceiver"

    const-string v3, "Factory Mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v2, 0x1

    goto :goto_21
.end method

.method private getSetupWizardType()I
    .registers 5

    .prologue
    .line 199
    const-string v0, "-1"

    .line 200
    .local v0, type:Ljava/lang/String;
    const/4 v1, -0x1

    .line 202
    .local v1, typeInt:I
    const-string v3, "SETUPWIZARD_INDEX_LIST"

    invoke-static {v3}, Lcom/sec/factory/support/Support$Feature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v3, "Unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 204
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, typeString:[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 208
    .end local v2           #typeString:[Ljava/lang/String;
    :cond_1b
    return v1
.end method

.method private isFactoryMode()Z
    .registers 7

    .prologue
    .line 484
    iget-object v4, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 486
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, device:Ljava/lang/String;
    const-string v0, "999999999999999"

    .line 488
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, imsi:Ljava/lang/String;
    if-eqz v2, :cond_27

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 491
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "isFactoryMode == true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v4, 0x1

    .line 498
    :goto_26
    return v4

    .line 494
    :cond_27
    const-string v4, "SetupWizardSkipReceiver"

    const-string v5, "isFactoryMode == false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->getFactoryMode()Z

    move-result v4

    goto :goto_26
.end method

.method private isForcedSkipped()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 426
    iget-object v2, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    const-string v3, "factory.skipped"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "factory.wizard.skipped"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 428
    .local v1, result:Z
    const-string v2, "SetupWizardSkipReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForcedSkipped() before : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v1
.end method

.method private isTargetComponent(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 443
    const-string v1, "SetupWizardSkipReceiver"

    const-string v2, "isTargetComponent()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$200(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSalesCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$700(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 457
    :cond_28
    :goto_28
    return v0

    .line 447
    :cond_29
    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$200(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 448
    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$200(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 457
    :cond_4d
    const/4 v0, 0x0

    goto :goto_28

    .line 452
    :cond_4f
    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSalesCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$700(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 453
    sget-object v1, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    aget-object v1, v1, p1

    #getter for: Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSalesCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->access$700(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_28
.end method

.method private sendDisableKeyguardIntent()V
    .registers 4

    .prologue
    .line 539
    const-string v1, "SetupWizardSkipReceiver"

    const-string v2, "sendDisableKeyguardIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.DISABLE_KEYGUARD_FACTORY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, keyguardIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 542
    return-void
.end method

.method private setForcedSkipped(Z)V
    .registers 7
    .parameter "status"

    .prologue
    .line 434
    const-string v2, "SetupWizardSkipReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForcedSkipped() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    const-string v3, "factory.skipped"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 437
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 438
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "factory.wizard.skipped"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x13

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 139
    iput-object p1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    .line 140
    sget-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->BASE_SETUPWIZARD_LIST:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    sput-object v5, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mSetupWizardList:[Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;

    .line 141
    const/4 v2, -0x1

    .line 142
    .local v2, isdevprovisioned:I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, action:Ljava/lang/String;
    const-string v5, "SetupWizardSkipReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, salesCode:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 148
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 149
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "onReceive - XML parsing failed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_4a
    const/16 v1, 0x12

    .line 157
    .local v1, factory_test_app_ver:I
    const-string v5, "FACTORY_TEST_APP"

    invoke-static {v5}, Lcom/sec/factory/support/Support$Version;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, strFactoryTestAppVer:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->getSetupWizardType()I

    move-result v5

    iput v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mType:I

    .line 161
    const-string v5, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 164
    :cond_79
    if-lt v1, v10, :cond_81

    invoke-static {}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->getFactoryMode()Z

    move-result v5

    if-eq v5, v8, :cond_89

    :cond_81
    if-ge v1, v10, :cond_a5

    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isFactoryMode()Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 168
    :cond_89
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "It is FactoryMode. isFactoryMode() == true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-ne v2, v8, :cond_9a

    .line 171
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "isdevprovisioned: true"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_99
    :goto_99
    return-void

    .line 173
    :cond_9a
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "isdevprovisioned: false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->CloseSetupWizard()V

    goto :goto_99

    .line 176
    :cond_a5
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isForcedSkipped()Z

    move-result v5

    if-ne v5, v8, :cond_99

    .line 181
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "set DEVICE_PROVISIONED to 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->EnableSetupWizard()V

    .line 185
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->sendDisableKeyguardIntent()V

    goto :goto_99

    .line 187
    :cond_c4
    const-string v5, "android.intent.action.CLOSE_SETUP_WIZARD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 188
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "Ignored..................."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->CloseSetupWizard()V

    goto :goto_99

    .line 191
    :cond_d7
    const-string v5, "android.intent.action.ENABLE_SETUP_WIZARD"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 192
    const-string v5, "SetupWizardSkipReceiver"

    const-string v6, "Ignored..................."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sput-boolean v8, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->isReceivedEnalbleIntent:Z

    .line 194
    invoke-direct {p0}, Lcom/sec/factory/entry/SetupWizardSkipReceiver;->EnableSetupWizard()V

    goto :goto_99
.end method
