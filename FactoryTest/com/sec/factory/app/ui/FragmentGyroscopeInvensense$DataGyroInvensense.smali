.class public Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense$DataGyroInvensense;
.super Ljava/lang/Object;
.source "FragmentGyroscopeInvensense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/FragmentGyroscopeInvensense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataGyroInvensense"
.end annotation


# instance fields
.field public mBias_Result:Ljava/lang/String;

.field public mBias_X:Ljava/lang/String;

.field public mBias_Y:Ljava/lang/String;

.field public mBias_Z:Ljava/lang/String;

.field public mInitialized:Ljava/lang/String;

.field public mRMS_X:Ljava/lang/String;

.field public mRMS_Y:Ljava/lang/String;

.field public mRMS_Z:Ljava/lang/String;

.field public mTemperature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
