.class public Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;
.super Landroid/app/Activity;
.source "XUIStorageNotifyActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;


# instance fields
.field private final MAX_DOWNLOAD_WAIT_TIME:I

.field private m_Context:Landroid/content/Context;

.field private m_hDLStorageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_hDLStorageHandler:Landroid/os/Handler;

    .line 34
    const v0, 0x1b7740

    iput v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->MAX_DOWNLOAD_WAIT_TIME:I

    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->xuiCallSdCardAlarm()V

    return-void
.end method

.method private xuiCallSdCardAlarm()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 106
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SDCARD_MAXTIME_ALARM"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_Context:Landroid/content/Context;

    invoke-static {v6, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 108
    .local v5, sender:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-static {v6}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    .local v0, am:Landroid/app/AlarmManager;
    if-nez v0, :cond_1e

    .line 111
    const-string v6, "AlarmManager is null!!"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 119
    :goto_1d
    return-void

    .line 114
    :cond_1e
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 115
    .local v1, dt:Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    add-long v3, v6, v8

    .line 116
    .local v3, ltime:J
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 117
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0, v10, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 118
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto :goto_1d
.end method


# virtual methods
.method protected DisplaySelectSdcard()V
    .registers 6

    .prologue
    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070035

    new-instance v4, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07002b

    new-instance v4, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$3;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$2;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 99
    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_Context:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dlgID"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, nId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dlgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$1;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V

    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_hDLStorageHandler:Landroid/os/Handler;

    .line 62
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->m_hDLStorageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 124
    packed-switch p1, :pswitch_data_8

    .line 131
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 124
    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method
