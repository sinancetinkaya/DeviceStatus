.class public Lcom/sec/factory/app/ui/UIHDMI_Portrait;
.super Lcom/sec/factory/app/ui/UIHDMI;
.source "UIHDMI_Portrait.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 22
    const-string v0, "UIHDMI_Portrait"

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIHDMI;-><init>(Ljava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIHDMI;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIHDMI;->onPause()V

    .line 38
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIHDMI;->onResume()V

    .line 33
    return-void
.end method
