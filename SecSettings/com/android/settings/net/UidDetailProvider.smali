.class public Lcom/android/settings/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    .line 41
    return-void
.end method

.method private buildUidDetail(I)Lcom/android/settings/net/UidDetail;
    .registers 15
    .parameter "uid"

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 79
    iget-object v11, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 80
    .local v10, res:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 82
    .local v9, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Lcom/android/settings/net/UidDetail;

    invoke-direct {v2}, Lcom/android/settings/net/UidDetail;-><init>()V

    .line 83
    .local v2, detail:Lcom/android/settings/net/UidDetail;
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 87
    sparse-switch p1, :sswitch_data_cc

    .line 105
    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, packageNames:[Ljava/lang/String;
    if-eqz v8, :cond_29

    array-length v5, v8

    .line 109
    .local v5, length:I
    :cond_29
    if-ne v5, v12, :cond_8d

    .line 110
    const/4 v11, 0x0

    :try_start_2c
    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 111
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_43} :catch_c9

    .line 131
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    :cond_43
    :goto_43
    iget-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 135
    .end local v5           #length:I
    .end local v8           #packageNames:[Ljava/lang/String;
    :cond_51
    :goto_51
    return-object v2

    .line 89
    :sswitch_52
    const v11, 0x7f0906e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    .line 93
    :sswitch_62
    const v11, 0x7f09081c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    .line 97
    :sswitch_72
    iget-object v11, p0, Lcom/android/settings/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 99
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_51

    .line 113
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .restart local v5       #length:I
    .restart local v8       #packageNames:[Ljava/lang/String;
    :cond_8d
    if-le v5, v12, :cond_43

    .line 114
    :try_start_8f
    new-array v11, v5, [Ljava/lang/CharSequence;

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 115
    const/4 v3, 0x0

    .local v3, i:I
    :goto_94
    if-ge v3, v5, :cond_43

    .line 116
    aget-object v7, v8, v3

    .line 117
    .local v7, packageName:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 118
    .local v6, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 120
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    .line 121
    iget v11, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v11, :cond_c6

    .line 122
    iget v11, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8f .. :try_end_c6} :catch_c9

    .line 115
    :cond_c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 128
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v6           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #packageName:Ljava/lang/String;
    :catch_c9
    move-exception v11

    goto/16 :goto_43

    .line 87
    :sswitch_data_cc
    .sparse-switch
        -0x5 -> :sswitch_72
        -0x4 -> :sswitch_62
        0x3e8 -> :sswitch_52
    .end sparse-switch
.end method


# virtual methods
.method public clearCache()V
    .registers 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 46
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getUidDetail(IZ)Lcom/android/settings/net/UidDetail;
    .registers 6
    .parameter "uid"
    .parameter "blocking"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 56
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/net/UidDetail;

    .line 57
    .local v0, detail:Lcom/android/settings/net/UidDetail;
    monitor-exit v2

    .line 59
    if-eqz v0, :cond_13

    move-object v1, v0

    .line 71
    :goto_f
    return-object v1

    .line 57
    .end local v0           #detail:Lcom/android/settings/net/UidDetail;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1

    .line 61
    .restart local v0       #detail:Lcom/android/settings/net/UidDetail;
    :cond_13
    if-nez p2, :cond_17

    .line 62
    const/4 v1, 0x0

    goto :goto_f

    .line 65
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/settings/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settings/net/UidDetail;

    move-result-object v0

    .line 67
    iget-object v2, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 68
    :try_start_1e
    iget-object v1, p0, Lcom/android/settings/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    monitor-exit v2

    move-object v1, v0

    .line 71
    goto :goto_f

    .line 69
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_26

    throw v1
.end method
