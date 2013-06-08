.class Lcom/sec/factory/modules/ModuleAudioService$2;
.super Ljava/lang/Object;
.source "ModuleAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleAudioService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleAudioService;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleAudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudioService$2;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleAudioService$2;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleAudioService;->StartLoopBack()V

    .line 128
    return-void
.end method
