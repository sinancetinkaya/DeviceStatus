.class Lcom/sec/factory/modules/ModuleCommunicationService$5;
.super Ljava/lang/Object;
.source "ModuleCommunicationService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/ModuleCommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleCommunicationService;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleCommunicationService;)V
    .registers 2
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleCommunicationService$5;->this$0:Lcom/sec/factory/modules/ModuleCommunicationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 652
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 656
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 660
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 664
    return-void
.end method
