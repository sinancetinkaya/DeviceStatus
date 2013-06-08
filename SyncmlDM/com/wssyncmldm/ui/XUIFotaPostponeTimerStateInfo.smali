.class public Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
.super Ljava/lang/Object;
.source "XUIFotaPostponeTimerStateInfo.java"


# instance fields
.field public bSelect_PostponeTime:Z

.field public nAfterDownLoadBatteryStatus:Z

.field public nEndTime:J

.field public timerInterval:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    .line 13
    return-void
.end method
