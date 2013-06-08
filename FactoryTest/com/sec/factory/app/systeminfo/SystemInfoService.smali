.class public Lcom/sec/factory/app/systeminfo/SystemInfoService;
.super Landroid/app/Service;
.source "SystemInfoService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mSystemInfoView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "SystemInfoService"

    sput-object v0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Lcom/sec/factory/app/systeminfo/SystemInfoService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/systeminfo/SystemInfoService$1;-><init>(Lcom/sec/factory/app/systeminfo/SystemInfoService;)V

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplaySystemInfo()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, className:Ljava/lang/String;
    const-string v1, "com.android.launcher2.Launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 66
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :goto_21
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    return-void

    .line 68
    :cond_2a
    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method static synthetic access$000(Lcom/sec/factory/app/systeminfo/SystemInfoService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/systeminfo/SystemInfoService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->DisplaySystemInfo()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v1, -0x2

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    sget-object v0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/sec/factory/support/XMLDataStorage;->instance()Lcom/sec/factory/support/XMLDataStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/factory/support/XMLDataStorage;->parseXML(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 33
    sget-object v0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->TAG:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "SystemInfoService => XML data parsing was failed."

    invoke-static {v0, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_23
    new-instance v0, Lcom/sec/factory/app/systeminfo/SystemInfoView;

    invoke-direct {v0, p0}, Lcom/sec/factory/app/systeminfo/SystemInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    .line 37
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mActivityManager:Landroid/app/ActivityManager;

    .line 38
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 43
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Lcom/sec/factory/app/systeminfo/SystemInfoService;->DisplaySystemInfo()V

    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    sget-object v0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoService;->mSystemInfoView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 53
    return-void
.end method
