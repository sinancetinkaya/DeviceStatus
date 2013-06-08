.class Lcom/wssyncmldm/adapter/XDMTelephonyData$1;
.super Ljava/lang/Object;
.source "XDMTelephonyData.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/adapter/XDMTelephonyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/adapter/XDMTelephonyData;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "location"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v0, szBuf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLatitude:D

    .line 58
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLongitude:D

    .line 59
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAltitude:D

    .line 60
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mBearing:F

    .line 61
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mSpeed:F

    .line 62
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAccuracy:F

    .line 63
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mTime:J

    .line 65
    const-string v1, "location changed: latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget-wide v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget-wide v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget-wide v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 73
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, ", accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    iget v1, v1, Lcom/wssyncmldm/adapter/XDMTelephonyData;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/wssyncmldm/adapter/XDMTelephonyData$1;->this$0:Lcom/wssyncmldm/adapter/XDMTelephonyData;

    invoke-virtual {v1}, Lcom/wssyncmldm/adapter/XDMTelephonyData;->xdmStopNetwokProvider()V

    .line 81
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .parameter "szArg"

    .prologue
    .line 86
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "szProvider"

    .prologue
    .line 91
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "szProvider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 96
    return-void
.end method
