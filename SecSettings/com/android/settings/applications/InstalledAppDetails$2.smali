.class Lcom/android/settings/applications/InstalledAppDetails$2;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$2;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails$2;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    #calls: Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1300(Lcom/android/settings/applications/InstalledAppDetails;Z)V

    .line 1137
    return-void

    .line 1136
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
