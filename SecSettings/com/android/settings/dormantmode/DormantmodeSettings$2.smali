.class Lcom/android/settings/dormantmode/DormantmodeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 119
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->finish()V

    .line 120
    :cond_11
    return-void
.end method
