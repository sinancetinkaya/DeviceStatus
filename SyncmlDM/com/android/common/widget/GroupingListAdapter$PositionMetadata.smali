.class public Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;
.super Ljava/lang/Object;
.source "GroupingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/GroupingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PositionMetadata"
.end annotation


# instance fields
.field childCount:I

.field cursorPosition:I

.field private groupPosition:I

.field isExpanded:Z

.field itemType:I

.field private listPosition:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->listPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/common/widget/GroupingListAdapter$PositionMetadata;->groupPosition:I

    return p1
.end method
