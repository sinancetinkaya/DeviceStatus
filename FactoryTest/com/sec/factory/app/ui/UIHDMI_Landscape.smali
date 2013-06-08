.class public Lcom/sec/factory/app/ui/UIHDMI_Landscape;
.super Lcom/sec/factory/app/ui/UIHDMI;
.source "UIHDMI_Landscape.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    const-string v0, "UIHDMI_Landscape"

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Lcom/sec/factory/app/ui/UIHDMI;-><init>(Ljava/lang/String;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/sec/factory/app/ui/UIHDMI;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIHDMI;->onPause()V

    .line 37
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/sec/factory/app/ui/UIHDMI;->onResume()V

    .line 32
    return-void
.end method
