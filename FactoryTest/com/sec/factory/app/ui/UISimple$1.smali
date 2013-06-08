.class Lcom/sec/factory/app/ui/UISimple$1;
.super Landroid/content/BroadcastReceiver;
.source "UISimple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISimple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISimple;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISimple;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISimple$1;->this$0:Lcom/sec/factory/app/ui/UISimple;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, mAction:Ljava/lang/String;
    const-string v1, "com.android.samsungtest.CAMERA_GOOD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISimple$1;->this$0:Lcom/sec/factory/app/ui/UISimple;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UISimple;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_GOOD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_17
    :goto_17
    return-void

    .line 52
    :cond_18
    const-string v1, "com.android.samsungtest.CAMERA_BAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 53
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISimple$1;->this$0:Lcom/sec/factory/app/ui/UISimple;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UISimple;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    const-string v3, "CAMERA_BAD"

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
