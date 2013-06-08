.class public Lcom/sec/factory/app/ui/FragmentGeomagneticAlps$DataGeomagneticAlps;
.super Ljava/lang/Object;
.source "FragmentGeomagneticAlps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/FragmentGeomagneticAlps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataGeomagneticAlps"
.end annotation


# instance fields
.field public mADC_Result:Ljava/lang/String;

.field public mADC_X:Ljava/lang/String;

.field public mADC_Y:Ljava/lang/String;

.field public mADC_Z:Ljava/lang/String;

.field public mInitialized:Ljava/lang/String;

.field public mIsDisplay_ADC:Z

.field public mIsDisplay_Initialized:Z

.field public mIsDisplay_Status:Z

.field public mStatus:Ljava/lang/String;

.field public mStatus_Result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
