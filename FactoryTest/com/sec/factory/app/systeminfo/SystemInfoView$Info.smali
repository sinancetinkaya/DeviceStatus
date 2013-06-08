.class Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;
.super Ljava/lang/Object;
.source "SystemInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/systeminfo/SystemInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Info"
.end annotation


# instance fields
.field public mData:Ljava/lang/String;

.field public mIsShow:Z

.field final synthetic this$0:Lcom/sec/factory/app/systeminfo/SystemInfoView;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/systeminfo/SystemInfoView;Z)V
    .registers 4
    .parameter
    .parameter "isShow"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->this$0:Lcom/sec/factory/app/systeminfo/SystemInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p2, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mIsShow:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/factory/app/systeminfo/SystemInfoView$Info;->mData:Ljava/lang/String;

    .line 45
    return-void
.end method
