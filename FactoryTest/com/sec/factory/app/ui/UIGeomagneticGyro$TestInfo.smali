.class Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;
.super Ljava/lang/Object;
.source "UIGeomagneticGyro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIGeomagneticGyro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestInfo"
.end annotation


# instance fields
.field public mIC:Ljava/lang/String;

.field public mID:I

.field public mIsTestComplete:Z

.field public mIsTestPass:Z

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;


# direct methods
.method private constructor <init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->this$0:Lcom/sec/factory/app/ui/UIGeomagneticGyro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIC:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestComplete:Z

    .line 54
    iput-boolean v1, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mIsTestPass:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;->mID:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;Lcom/sec/factory/app/ui/UIGeomagneticGyro$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/factory/app/ui/UIGeomagneticGyro$TestInfo;-><init>(Lcom/sec/factory/app/ui/UIGeomagneticGyro;)V

    return-void
.end method
