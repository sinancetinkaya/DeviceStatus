.class public Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
.super Ljava/lang/Object;
.source "XDBPostPoneInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public CurrentVersion:Ljava/lang/String;

.field public bAutoInstall:Z

.field public nAfterDownLoadBatteryStatus:Z

.field public nPostPoneCount:I

.field public nPostPoneDownload:I

.field public nPostPoneTime:J

.field public tCurrentTime:J

.field public tEndTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
