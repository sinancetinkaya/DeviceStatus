.class public Lcom/sec/factory/modules/ModuleAudioService$LocalBinder;
.super Landroid/os/Binder;
.source "ModuleAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleAudioService;


# direct methods
.method public constructor <init>(Lcom/sec/factory/modules/ModuleAudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleAudioService$LocalBinder;->this$0:Lcom/sec/factory/modules/ModuleAudioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
