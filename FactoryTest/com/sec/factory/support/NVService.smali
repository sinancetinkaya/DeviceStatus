.class public Lcom/sec/factory/support/NVService;
.super Landroid/app/Service;
.source "NVService.java"


# instance fields
.field mBinder:Lcom/sec/factory/support/INVService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lcom/sec/factory/support/NVService$1;

    invoke-direct {v0, p0}, Lcom/sec/factory/support/NVService$1;-><init>(Lcom/sec/factory/support/NVService;)V

    iput-object v0, p0, Lcom/sec/factory/support/NVService;->mBinder:Lcom/sec/factory/support/INVService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/factory/support/NVService;->mBinder:Lcom/sec/factory/support/INVService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 27
    return-void
.end method
