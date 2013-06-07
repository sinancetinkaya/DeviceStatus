.class public Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/net/UidDetailProvider;I)V
    .registers 4
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1723
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1720
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1724
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 1725
    iput p2, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1726
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .registers 22
    .parameter "stats"
    .parameter "restrictedAppIds"

    .prologue
    .line 1732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1734
    new-instance v12, Lcom/android/settings/DataUsageSummary$AppItem;

    const/16 v13, 0x3e8

    invoke-direct {v12, v13}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1735
    .local v12, systemItem:Lcom/android/settings/DataUsageSummary$AppItem;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1737
    .local v9, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings/DataUsageSummary$AppItem;>;"
    const/4 v4, 0x0

    .line 1738
    .local v4, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_65

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 1739
    .local v11, size:I
    :goto_1a
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1b
    if-ge v5, v11, :cond_7d

    .line 1740
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 1742
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v13}, Landroid/os/UserId;->isApp(I)Z

    move-result v7

    .line 1743
    .local v7, isApp:Z
    if-eqz v7, :cond_67

    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v13}, Landroid/os/UserId;->getAppId(I)I

    move-result v2

    .line 1744
    .local v2, appId:I
    :goto_31
    if-nez v7, :cond_39

    const/4 v13, -0x4

    if-eq v2, v13, :cond_39

    const/4 v13, -0x5

    if-ne v2, v13, :cond_6a

    .line 1745
    :cond_39
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1746
    .local v8, item:Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v8, :cond_50

    .line 1747
    new-instance v8, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-direct {v8, v2}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1748
    .restart local v8       #item:Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-virtual {v9, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    :cond_50
    iget-wide v13, v8, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1753
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v8, v13}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    .line 1739
    .end local v8           #item:Lcom/android/settings/DataUsageSummary$AppItem;
    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1738
    .end local v2           #appId:I
    .end local v5           #i:I
    .end local v7           #isApp:Z
    .end local v11           #size:I
    :cond_65
    const/4 v11, 0x0

    goto :goto_1a

    .line 1743
    .restart local v5       #i:I
    .restart local v7       #isApp:Z
    .restart local v11       #size:I
    :cond_67
    iget v2, v4, Landroid/net/NetworkStats$Entry;->uid:I

    goto :goto_31

    .line 1755
    .restart local v2       #appId:I
    :cond_6a
    iget-wide v13, v12, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v12, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1756
    iget v13, v4, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v12, v13}, Lcom/android/settings/DataUsageSummary$AppItem;->addUid(I)V

    goto :goto_62

    .line 1760
    .end local v2           #appId:I
    .end local v7           #isApp:Z
    :cond_7d
    move-object/from16 v3, p2

    .local v3, arr$:[I
    array-length v10, v3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_81
    if-ge v6, v10, :cond_a3

    aget v2, v3, v6

    .line 1761
    .restart local v2       #appId:I
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1762
    .restart local v8       #item:Lcom/android/settings/DataUsageSummary$AppItem;
    if-nez v8, :cond_9d

    .line 1763
    new-instance v8, Lcom/android/settings/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/settings/DataUsageSummary$AppItem;
    invoke-direct {v8, v2}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1764
    .restart local v8       #item:Lcom/android/settings/DataUsageSummary$AppItem;
    const-wide/16 v13, -0x1

    iput-wide v13, v8, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    .line 1765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    :cond_9d
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    .line 1760
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 1770
    .end local v2           #appId:I
    .end local v8           #item:Lcom/android/settings/DataUsageSummary$AppItem;
    :cond_a3
    iget-wide v13, v12, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_b2

    .line 1771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1774
    :cond_b2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/DataUsageSummary$AppItem;

    iget-wide v13, v13, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    :goto_d0
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1776
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1777
    return-void

    .line 1775
    :cond_d8
    const-wide/16 v13, 0x0

    goto :goto_d0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->appId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 1796
    if-nez p2, :cond_1f

    .line 1797
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040042

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1800
    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_1f

    .line 1801
    iget v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1805
    :cond_1f
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1807
    .local v0, context:Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1808
    .local v4, text1:Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1812
    .local v3, progress:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1813
    .local v1, item:Lcom/android/settings/DataUsageSummary$AppItem;
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/settings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings/net/UidDetailProvider;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1815
    iget-boolean v5, v1, Lcom/android/settings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v5, :cond_6a

    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6a

    .line 1816
    const v5, 0x7f0907ea

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1817
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1823
    :goto_57
    iget-wide v5, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_66

    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 1824
    .local v2, percentTotal:I
    :cond_66
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1826
    return-object p2

    .line 1819
    .end local v2           #percentTotal:I
    :cond_6a
    iget-wide v5, v1, Lcom/android/settings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1820
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_57
.end method
