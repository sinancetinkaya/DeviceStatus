.class public Lcom/android/settings/DataUsageSummary$AppItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/DataUsageSummary$AppItem;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final appId:I

.field public restricted:Z

.field public total:J

.field public uids:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1700
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem$1;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$AppItem$1;-><init>()V

    sput-object v0, Lcom/android/settings/DataUsageSummary$AppItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 1669
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1670
    iput p1, p0, Lcom/android/settings/DataUsageSummary$AppItem;->appId:I

    .line 1671
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "parcel"

    .prologue
    .line 1673
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->appId:I

    .line 1675
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    .line 1676
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1677
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .registers 4
    .parameter "uid"

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1681
    return-void
.end method

.method public compareTo(Lcom/android/settings/DataUsageSummary$AppItem;)I
    .registers 6
    .parameter "another"

    .prologue
    .line 1697
    iget-wide v0, p1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v2, p0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 1663
    check-cast p1, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/DataUsageSummary$AppItem;->compareTo(Lcom/android/settings/DataUsageSummary$AppItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1692
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1685
    iget v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1686
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 1687
    iget-wide v0, p0, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1688
    return-void
.end method
