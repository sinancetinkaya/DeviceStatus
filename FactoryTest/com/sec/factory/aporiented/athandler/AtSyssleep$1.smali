.class Lcom/sec/factory/aporiented/athandler/AtSyssleep$1;
.super Ljava/lang/Object;
.source "AtSyssleep.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/athandler/AtSyssleep;->reqestSleep()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/athandler/AtSyssleep;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/athandler/AtSyssleep;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/factory/aporiented/athandler/AtSyssleep$1;->this$0:Lcom/sec/factory/aporiented/athandler/AtSyssleep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 53
    const-string v1, "SUPPORT_DUAL_STANBY"

    invoke-static {v1}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 54
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->sendSleepCmd2Ril()V

    .line 58
    :cond_d
    const-wide/16 v1, 0xc8

    :try_start_f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_18

    .line 62
    :goto_12
    sget-object v1, Lcom/sec/factory/aporiented/athandler/AtCommandHandler;->mModulePower:Lcom/sec/factory/modules/ModulePower;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModulePower;->sleep()V

    .line 63
    return-void

    .line 59
    :catch_18
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12
.end method
