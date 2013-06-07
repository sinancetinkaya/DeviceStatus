.class public Lcom/sec/bcservice/BroadcastService;
.super Landroid/app/Service;
.source "BroadcastService.java"


# static fields
.field private static final SWVER:Ljava/lang/String;

.field private static msize:J


# instance fields
.field private final DELAYTIME:I

.field private PARAM_CDCONT_GANR:Ljava/lang/String;

.field private PARAM_CDCONT_GASZ:Ljava/lang/String;

.field private PARAM_CDVOL_RX:Ljava/lang/String;

.field private PARAM_CDVOL_TX:Ljava/lang/String;

.field private USBATCOMMAND_REQUEST:Ljava/lang/String;

.field private USBATCOMMAND_RESPONSE:Ljava/lang/String;

.field private commandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectDRSocket:Ljava/lang/Runnable;

.field private dis:Ljava/io/DataInputStream;

.field private dos:Ljava/io/DataOutputStream;

.field private in:Ljava/io/InputStream;

.field private index:I

.field private intentTimer:Landroid/os/Handler;

.field private isSysScopeStatus:I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private out:Ljava/io/OutputStream;

.field private socket:Landroid/net/LocalSocket;

.field private threadStatus:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    const-string v0, "ro.build.PDA"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/bcservice/BroadcastService;->SWVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    const/16 v0, 0x1388

    iput v0, p0, Lcom/sec/bcservice/BroadcastService;->DELAYTIME:I

    .line 55
    iput-object v1, p0, Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;

    .line 57
    iput-object v1, p0, Lcom/sec/bcservice/BroadcastService;->in:Ljava/io/InputStream;

    .line 58
    iput-object v1, p0, Lcom/sec/bcservice/BroadcastService;->dis:Ljava/io/DataInputStream;

    .line 60
    iput-object v1, p0, Lcom/sec/bcservice/BroadcastService;->out:Ljava/io/OutputStream;

    .line 61
    iput-object v1, p0, Lcom/sec/bcservice/BroadcastService;->dos:Ljava/io/DataOutputStream;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/bcservice/BroadcastService;->threadStatus:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/bcservice/BroadcastService;->index:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->intentTimer:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    .line 78
    const-string v0, "android.intent.action.BCS_REQUEST"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;

    .line 79
    const-string v0, "android.intent.action.BCS_RESPONSE"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_RESPONSE:Ljava/lang/String;

    .line 81
    const-string v0, "TX"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_TX:Ljava/lang/String;

    .line 82
    const-string v0, "RX"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_RX:Ljava/lang/String;

    .line 83
    const-string v0, "GA,NR"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GANR:Ljava/lang/String;

    .line 84
    const-string v0, "GA,SZ"

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GASZ:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/sec/bcservice/BroadcastService$1;

    invoke-direct {v0, p0}, Lcom/sec/bcservice/BroadcastService$1;-><init>(Lcom/sec/bcservice/BroadcastService;)V

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Lcom/sec/bcservice/BroadcastService$2;

    invoke-direct {v0, p0}, Lcom/sec/bcservice/BroadcastService$2;-><init>(Lcom/sec/bcservice/BroadcastService;)V

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->connectDRSocket:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_RESPONSE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/bcservice/BroadcastService;)Landroid/net/LocalSocket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/bcservice/BroadcastService;->getSysScopeStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/bcservice/BroadcastService;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GANR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/bcservice/BroadcastService;->getNumApks()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDCONT_GASZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/bcservice/BroadcastService;->getSizeApks()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_REQUEST:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_TX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/bcservice/BroadcastService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->PARAM_CDVOL_RX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/bcservice/BroadcastService;->SWVER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1914(J)J
    .registers 4
    .parameter "x0"

    .prologue
    .line 49
    sget-wide v0, Lcom/sec/bcservice/BroadcastService;->msize:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/sec/bcservice/BroadcastService;->msize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/bcservice/BroadcastService;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/bcservice/BroadcastService;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService;->in:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/bcservice/BroadcastService;)Ljava/io/DataInputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->dis:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/bcservice/BroadcastService;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService;->dis:Ljava/io/DataInputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/bcservice/BroadcastService;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/bcservice/BroadcastService;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sec/bcservice/BroadcastService;Ljava/io/DataOutputStream;)Ljava/io/DataOutputStream;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/bcservice/BroadcastService;->dos:Ljava/io/DataOutputStream;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/bcservice/BroadcastService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/sec/bcservice/BroadcastService;->threadStatus:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/bcservice/BroadcastService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/sec/bcservice/BroadcastService;->index:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/bcservice/BroadcastService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/bcservice/BroadcastService;->getArgument(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/bcservice/BroadcastService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private getArgument(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .parameter "cmd"

    .prologue
    .line 466
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, res:[Ljava/lang/String;
    return-object v0
.end method

.method private getNumApks()Ljava/lang/String;
    .registers 6

    .prologue
    .line 481
    const-string v2, "BCService"

    const-string v3, "getNumApks in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/sec/bcservice/BroadcastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 483
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0x2200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v2, "BCService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumApks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeApks()Ljava/lang/String;
    .registers 10

    .prologue
    .line 490
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/sec/bcservice/BroadcastService;->msize:J

    .line 491
    new-instance v2, Lcom/sec/bcservice/BroadcastService$3;

    invoke-direct {v2, p0}, Lcom/sec/bcservice/BroadcastService$3;-><init>(Lcom/sec/bcservice/BroadcastService;)V

    .line 502
    .local v2, mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;
    :try_start_9
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 505
    .local v5, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/sec/bcservice/BroadcastService;->getInstalledPackages(ILandroid/content/pm/IPackageManager;)Ljava/util/List;

    move-result-object v4

    .line 506
    .local v4, pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 507
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    const-string v6, "BCService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_47} :catch_6b

    .line 511
    const-wide/16 v6, 0xa

    :try_start_49
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_6b

    goto :goto_1c

    .line 512
    :catch_4d
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/Exception;
    :try_start_4e
    const-string v6, "BCService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6a} :catch_6b

    goto :goto_1c

    .line 518
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5           #pm:Landroid/content/pm/IPackageManager;
    :catch_6b
    move-exception v0

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "BCService"

    const-string v7, "remote exception"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v6, "0"

    .line 523
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_75
    return-object v6

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v4       #pkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v5       #pm:Landroid/content/pm/IPackageManager;
    :cond_76
    sget-wide v6, Lcom/sec/bcservice/BroadcastService;->msize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_75
.end method

.method private getSysScopeStatus()Ljava/lang/String;
    .registers 11

    .prologue
    const v9, 0x7f030004

    const/4 v8, -0x1

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 551
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 552
    const-wide/16 v2, 0x1

    .line 555
    :cond_15
    iget-object v4, p0, Lcom/sec/bcservice/BroadcastService;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v4}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v4

    if-nez v4, :cond_40

    const-wide/16 v4, 0x78

    cmp-long v4, v2, v4

    if-lez v4, :cond_40

    .line 556
    invoke-virtual {p0, v9}, Lcom/sec/bcservice/BroadcastService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 574
    :goto_27
    const-string v4, "BCService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return-object v1

    .line 559
    :cond_40
    :try_start_40
    iget-object v4, p0, Lcom/sec/bcservice/BroadcastService;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v4}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I

    move-result v4

    iput v4, p0, Lcom/sec/bcservice/BroadcastService;->isSysScopeStatus:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4c} :catch_56

    .line 565
    :goto_4c
    iget v4, p0, Lcom/sec/bcservice/BroadcastService;->isSysScopeStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_76

    .line 566
    invoke-virtual {p0, v9}, Lcom/sec/bcservice/BroadcastService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 560
    :catch_56
    move-exception v0

    .line 561
    .local v0, e:Ljava/lang/Exception;
    iput v8, p0, Lcom/sec/bcservice/BroadcastService;->isSysScopeStatus:I

    .line 562
    const-string v4, "BCService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occurred: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 567
    .end local v0           #e:Ljava/lang/Exception;
    :cond_76
    iget v4, p0, Lcom/sec/bcservice/BroadcastService;->isSysScopeStatus:I

    if-ne v4, v8, :cond_82

    .line 568
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/sec/bcservice/BroadcastService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 570
    :cond_82
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lcom/sec/bcservice/BroadcastService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method

.method private initCommandMap()V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "SYSSCOPE"

    const-string v2, "AT+SYSSCOPE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "DRSDISCONNECT"

    const-string v2, "AT+DRSDISCONNECT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "CDCONT"

    const-string v2, "AT+CDCONT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "CDVOL"

    const-string v2, "AT+CDVOL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "CGSN"

    const-string v2, "AT+CGSN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "CNUM"

    const-string v2, "AT+CNUM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "CIMI"

    const-string v2, "AT+CIMI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->commandMap:Ljava/util/HashMap;

    const-string v1, "ATI"

    const-string v2, "ATI1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-void
.end method

.method private startSysScopeStatue()V
    .registers 3

    .prologue
    .line 474
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 475
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    if-nez v0, :cond_12

    .line 476
    const-string v0, "BCService"

    const-string v1, "mSysScope == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_12
    return-void
.end method


# virtual methods
.method public WriteToDR(Ljava/lang/String;)V
    .registers 7
    .parameter "Message"

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 582
    .local v0, byteTmp:[B
    const-string v2, "BCService"

    const-string v3, "WriteToDR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_b
    iget-object v2, p0, Lcom/sec/bcservice/BroadcastService;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 586
    const-string v2, "BCService"

    const-string v3, "Write OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_1d

    .line 591
    :goto_17
    :try_start_17
    iget-object v2, p0, Lcom/sec/bcservice/BroadcastService;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_3b

    .line 595
    :goto_1c
    return-void

    .line 587
    :catch_1d
    move-exception v1

    .line 588
    .local v1, e:Ljava/io/IOException;
    const-string v2, "BCService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 592
    .end local v1           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v1

    .line 593
    .restart local v1       #e:Ljava/io/IOException;
    const-string v2, "BCService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public getInstalledPackages(ILandroid/content/pm/IPackageManager;)Ljava/util/List;
    .registers 10
    .parameter "flags"
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/IPackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v3, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .line 534
    .local v1, lastItem:Landroid/content/pm/PackageInfo;
    :cond_6
    if-eqz v1, :cond_1d

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 535
    .local v2, lastKey:Ljava/lang/String;
    :goto_a
    invoke-interface {p2, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 536
    .local v4, slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    sget-object v5, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/ParceledListSlice;->populateList(Ljava/util/List;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 537
    .restart local v1       #lastItem:Landroid/content/pm/PackageInfo;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->isLastSlice()Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1f

    move-result v5

    if-eqz v5, :cond_6

    .line 539
    return-object v3

    .line 534
    .end local v2           #lastKey:Ljava/lang/String;
    .end local v4           #slice:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :cond_1d
    const/4 v2, 0x0

    goto :goto_a

    .line 540
    .end local v1           #lastItem:Landroid/content/pm/PackageInfo;
    .end local v3           #packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1f
    move-exception v0

    .line 541
    .local v0, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Package manager has died"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sec/bcservice/BroadcastService;->initCommandMap()V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/bcservice/BroadcastService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/bcservice/BroadcastService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/sec/bcservice/BroadcastService;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 162
    :goto_11
    return-void

    .line 161
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 98
    const-string v1, "BCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v1, p0, Lcom/sec/bcservice/BroadcastService;->threadStatus:Z

    if-nez v1, :cond_2c

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/bcservice/BroadcastService;->threadStatus:Z

    .line 103
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/bcservice/BroadcastService;->connectDRSocket:Ljava/lang/Runnable;

    const-string v3, "DRService"

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 104
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_2c
    invoke-direct {p0}, Lcom/sec/bcservice/BroadcastService;->startSysScopeStatue()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/bcservice/BroadcastService;->startReceiver()V

    .line 110
    const/4 v1, 0x0

    return v1
.end method

.method public startReceiver()V
    .registers 4

    .prologue
    .line 115
    const-string v1, "BCService"

    const-string v2, "startReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/bcservice/BroadcastService;->USBATCOMMAND_RESPONSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/sec/bcservice/BroadcastService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/bcservice/BroadcastService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method
