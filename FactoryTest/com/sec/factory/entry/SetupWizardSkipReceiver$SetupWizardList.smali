.class public Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;
.super Ljava/lang/Object;
.source "SetupWizardSkipReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/entry/SetupWizardSkipReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupWizardList"
.end annotation


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mModelName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSalesCode:Ljava/lang/String;

.field private mSetupwizType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "model"
    .parameter "salescode"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "setupwizType"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSalesCode:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;

    .line 97
    if-nez p4, :cond_11

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;

    .line 102
    :goto_e
    iput p5, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSetupwizType:I

    .line 103
    return-void

    .line 100
    :cond_11
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;

    goto :goto_e
.end method

.method static synthetic access$000(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Landroid/content/ComponentName;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSetupwizType:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/factory/entry/SetupWizardSkipReceiver$SetupWizardList;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method
