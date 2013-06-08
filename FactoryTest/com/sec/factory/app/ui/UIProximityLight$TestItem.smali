.class Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
.super Ljava/lang/Object;
.source "UIProximityLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIProximityLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestItem"
.end annotation


# instance fields
.field public mID:I

.field public mIsPass:Z

.field public mStatus:I

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIProximityLight;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIProximityLight;I)V
    .registers 4
    .parameter
    .parameter "id"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p2, p0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    .line 91
    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_NONE:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UIProximityLight;->access$000(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 93
    return-void
.end method
