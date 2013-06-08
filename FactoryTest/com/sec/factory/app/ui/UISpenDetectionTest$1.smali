.class Lcom/sec/factory/app/ui/UISpenDetectionTest$1;
.super Landroid/content/BroadcastReceiver;
.source "UISpenDetectionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenDetectionTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 104
    const-string v1, "penInsert"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    .local v0, isPenInsert:Z
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v1, v1, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPenInsert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$000(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 115
    :goto_2b
    return-void

    .line 110
    :cond_2c
    if-eqz v0, :cond_38

    .line 111
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$000(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest$State;->detected()V

    goto :goto_2b

    .line 113
    :cond_38
    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$1;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$000(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest$State;->released()V

    goto :goto_2b
.end method
