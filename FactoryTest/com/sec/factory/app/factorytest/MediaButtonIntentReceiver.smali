.class public Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonIntentReceiver.java"


# static fields
.field private static mStatusEarKey:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;->mStatusEarKey:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, mAction:Ljava/lang/String;
    const-string v2, "MediaButtonIntentReceiver"

    const-string v3, "onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 24
    const-string v2, "MediaButtonIntentReceiver"

    const-string v3, "MediaButtonIntentReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MEDIA_BUTTON event + mStatusEarKey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;->mStatusEarKey:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 29
    .local v0, keyEvent:Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6b

    sget v2, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;->mStatusEarKey:I

    if-nez v2, :cond_6b

    .line 30
    const-string v2, "MediaButtonIntentReceiver"

    const-string v3, "MediaButtonIntentReceiver"

    const-string v4, "ACTION_MEDIA_BUTTON clicked"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sput v6, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;->mStatusEarKey:I

    .line 32
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.factory.app.factorytest.MEDIA_BUTTON_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    .end local v0           #keyEvent:Landroid/view/KeyEvent;
    :cond_6a
    :goto_6a
    return-void

    .line 33
    .restart local v0       #keyEvent:Landroid/view/KeyEvent;
    :cond_6b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v6, v2, :cond_6a

    .line 34
    const-string v2, "MediaButtonIntentReceiver"

    const-string v3, "MediaButtonIntentReceiver"

    const-string v4, "ACTION_MEDIA_BUTTON released"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v2, 0x0

    sput v2, Lcom/sec/factory/app/factorytest/MediaButtonIntentReceiver;->mStatusEarKey:I

    goto :goto_6a
.end method
