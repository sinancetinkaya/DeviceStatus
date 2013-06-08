.class Lcom/sec/factory/modules/ModuleAudio$1;
.super Ljava/lang/Object;
.source "ModuleAudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleAudio;->startLoopback(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleAudio;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleAudio;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudio$1;->this$0:Lcom/sec/factory/modules/ModuleAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio$1;->this$0:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1}, Lcom/sec/factory/modules/ModuleAudio;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/factory/modules/ModuleAudioService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/sec/factory/modules/ModuleAudio$1;->this$0:Lcom/sec/factory/modules/ModuleAudio;

    invoke-virtual {v1, v0}, Lcom/sec/factory/modules/ModuleAudio;->startService(Landroid/content/Intent;)V

    .line 303
    return-void
.end method
