.class Lcom/sec/factory/app/ui/UIGrip$TestItem;
.super Ljava/lang/Object;
.source "UIGrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIGrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestItem"
.end annotation


# instance fields
.field public mID:I

.field public mIsPass:Z

.field public mStatus:I

.field public mValue:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/factory/app/ui/UIGrip;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UIGrip;I)V
    .registers 4
    .parameter
    .parameter "id"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIGrip$TestItem;->this$0:Lcom/sec/factory/app/ui/UIGrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p2, p0, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mID:I

    .line 53
    #getter for: Lcom/sec/factory/app/ui/UIGrip;->TESTITEM_STATUS_RELEASE:I
    invoke-static {p1}, Lcom/sec/factory/app/ui/UIGrip;->access$000(Lcom/sec/factory/app/ui/UIGrip;)I

    move-result v0

    iput v0, p0, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mStatus:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mValue:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/factory/app/ui/UIGrip$TestItem;->mIsPass:Z

    .line 56
    return-void
.end method
