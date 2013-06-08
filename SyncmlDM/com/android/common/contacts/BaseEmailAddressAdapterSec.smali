.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapterSec.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;,
        Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    }
.end annotation


# static fields
.field private static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static BackupOfSearchedString:Ljava/lang/String; = null

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final DIRECTORY_LOCAL_INVISIBLE:J = 0x1L

.field private static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field public static final EXCHANGE_GAL_AUTHORITY:Ljava/lang/String; = "com.android.exchange.directory.provider"

.field public static final EXCHANGE_GAL_SHOW_MORE:Ljava/lang/String; = "gal_search_show_more"

.field public static ExpandResultMaxAndShowMoreMode:Z = false

.field public static final GAL_ALIAS:Ljava/lang/String; = "alias"

.field public static final GAL_COMPANY:Ljava/lang/String; = "company"

.field public static final GAL_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final GAL_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final GAL_FIRST_NAME:Ljava/lang/String; = "firstName"

.field public static final GAL_HOME_PHONE:Ljava/lang/String; = "homePhone"

.field public static final GAL_LAST_NAME:Ljava/lang/String; = "lastName"

.field public static final GAL_MOBILE_PHONE:Ljava/lang/String; = "mobilePhone"

.field public static final GAL_OFFICE:Ljava/lang/String; = "office"

.field public static final GAL_PICTURE_DATA:Ljava/lang/String; = "pictureData"

.field public static final GAL_TITLE:Ljava/lang/String; = "title"

.field public static final GAL_WORK_PHONE:Ljava/lang/String; = "workPhone"

.field private static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final MAX_DIRECTORYPARTITIONFILTER_RESULT:I = 0x14

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field public static final NEED_PHOTO_DATA:Ljava/lang/String; = "needPhotoData"

.field private static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field private static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final RIC_URI:Landroid/net/Uri; = null

.field private static final SEARCHING_CURSOR_MARKER:Ljava/lang/String; = "searching"

.field public static final START_PARAM_KEY:Ljava/lang/String; = "startindex"

.field private static final TAG:Ljava/lang/String; = "BaseEmailAddressAdapter"

.field public static isEnableGroupSearch:Z


# instance fields
.field private Acc_Id:Ljava/lang/Long;

.field public isOnlineSearchDisabled:Z

.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I

.field protected final mSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "content://com.android.exchange.directory.provider/recipientInformation cache/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    .line 120
    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    .line 121
    sput-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 440
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "preferredMaxResultCount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 99
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    .line 124
    iput-boolean v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    .line 436
    iput v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    .line 446
    iput p2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    .line 448
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    if-gez v0, :cond_35

    .line 450
    sput-boolean v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    .line 457
    :goto_26
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_38

    .line 458
    sput-boolean v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    .line 463
    :goto_2d
    new-instance v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;

    invoke-direct {v0, p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)V

    iput-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    .line 470
    return-void

    .line 454
    :cond_35
    sput-boolean v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    goto :goto_26

    .line 460
    :cond_38
    sput-boolean v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    goto :goto_2d
.end method

.method static synthetic access$000(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addShowMoreButtonAtlastPatition()V
    .registers 16

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v11

    .line 891
    .local v11, totalPatitionCount:I
    const/4 v12, 0x1

    if-gt v11, v12, :cond_f

    .line 892
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : partition is none"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :goto_e
    return-void

    .line 896
    :cond_f
    add-int/lit8 v8, v11, -0x1

    .line 898
    .local v8, partionindex:I
    const/4 v3, 0x0

    .line 899
    .local v3, enbleShowMore:Z
    const/4 v4, 0x1

    .local v4, i:I
    :goto_13
    if-ge v4, v11, :cond_6e

    .line 900
    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 901
    .local v9, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    if-eqz v9, :cond_6b

    .line 903
    invoke-virtual {p0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 904
    .local v0, curCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_6b

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ltz v12, :cond_6b

    .line 906
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : cursor is not null. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-boolean v12, v9, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6b

    .line 909
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : showmore does not need. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v3, 0x1

    .line 899
    .end local v0           #curCursor:Landroid/database/Cursor;
    :cond_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 917
    .end local v9           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_6e
    invoke-virtual {p0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    .line 919
    .local v6, lastCursor:Landroid/database/Cursor;
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 920
    .local v7, newCursor:Landroid/database/MatrixCursor;
    if-eqz v6, :cond_ba

    .line 922
    const/4 v12, -0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 923
    :cond_7f
    :goto_7f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 927
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 928
    .local v1, displayName:Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, emailAddress:Ljava/lang/String;
    sget-object v12, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 932
    .local v5, imageIndex:I
    const/4 v10, 0x0

    .line 935
    .local v10, pictureData:Ljava/lang/String;
    if-eqz v1, :cond_a3

    const-string v12, "gal_search_show_more"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7f

    .line 940
    :cond_a3
    const/4 v12, -0x1

    if-eq v5, v12, :cond_aa

    .line 941
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 946
    :cond_aa
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v10, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7f

    .line 953
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v5           #imageIndex:I
    .end local v10           #pictureData:Ljava/lang/String;
    :cond_ba
    if-eqz v3, :cond_d6

    .line 956
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-1"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 961
    :goto_d1
    invoke-virtual {p0, v8, v7}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    goto/16 :goto_e

    .line 958
    :cond_d6
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : showmore does not need."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 789
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 790
    .local v0, cursor:Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 791
    return-object v0
.end method

.method public static getBackupOfSearchedString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 598
    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .registers 6
    .parameter "cursor"
    .parameter "partition"

    .prologue
    const/4 v1, 0x1

    .line 998
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 999
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1000
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, emailAddress:Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1005
    .end local v0           #emailAddress:Ljava/lang/String;
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isAllPartitionEmpty()Z
    .registers 4

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    .line 986
    .local v1, totalCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_12

    .line 988
    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 990
    const/4 v2, 0x0

    .line 994
    :goto_e
    return v2

    .line 986
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 994
    :cond_12
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private isAllPartitionLoadFinished()Z
    .registers 5

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v2

    .line 970
    .local v2, totalCount:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_16

    .line 972
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 973
    .local v0, curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v3, :cond_13

    .line 975
    const/4 v3, 0x0

    .line 979
    .end local v0           #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :goto_12
    return v3

    .line 970
    .restart local v0       #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 979
    .end local v0           #curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_16
    const/4 v3, 0x1

    goto :goto_12
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .registers 9
    .parameter "emailAddress"
    .parameter "excludePartition"

    .prologue
    const/4 v4, 0x1

    .line 1013
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v3

    .line 1015
    .local v3, partitionCount:I
    const/4 v2, 0x0

    .local v2, partition:I
    :goto_6
    if-ge v2, v3, :cond_2e

    .line 1016
    if-eq v2, p2, :cond_2b

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1017
    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1018
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_2b

    .line 1019
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1020
    :cond_1a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1021
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, address:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1030
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    :goto_2a
    return v4

    .line 1015
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1030
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method private isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 19
    .parameter "emailAddress"
    .parameter "excludePartition"
    .parameter "pictureData"

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v12

    .line 1035
    .local v12, partitionCount:I
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1036
    .local v9, newCursor:Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 1037
    .local v6, defaultPatitionCursorChanged:Z
    const/4 v10, 0x0

    .line 1038
    .local v10, nowFounded:Z
    const/4 v8, 0x0

    .line 1039
    .local v8, isduplicated:Z
    const/4 v2, 0x0

    .line 1040
    .local v2, curdisplayName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1041
    .local v3, curemailAddress:Ljava/lang/String;
    const/4 v7, -0x1

    .line 1042
    .local v7, imageIndex:I
    const/4 v4, 0x0

    .line 1044
    .local v4, curpictureData:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, partition:I
    :goto_13
    if-ge v11, v12, :cond_60

    .line 1045
    move/from16 v0, p2

    if-eq v11, v0, :cond_5d

    invoke-direct {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v13

    if-nez v13, :cond_5d

    .line 1046
    invoke-virtual {p0, v11}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    .line 1047
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_5d

    .line 1048
    const/4 v13, -0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1049
    :cond_29
    :goto_29
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 1050
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, address:Ljava/lang/String;
    if-nez v11, :cond_50

    .line 1053
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1054
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1055
    sget-object v13, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1057
    const/4 v4, 0x0

    .line 1058
    if-ltz v7, :cond_50

    .line 1059
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1063
    :cond_50
    const/4 v10, 0x0

    .line 1064
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_67

    .line 1065
    const/4 v8, 0x1

    .line 1066
    const/4 v10, 0x1

    .line 1068
    if-eqz v11, :cond_67

    .line 1085
    .end local v1           #address:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_5d
    const/4 v13, 0x1

    if-ne v8, v13, :cond_8e

    .line 1091
    :cond_60
    if-eqz v6, :cond_66

    .line 1092
    const/4 v13, 0x0

    invoke-virtual {p0, v13, v9}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 1095
    :cond_66
    return v8

    .line 1073
    .restart local v1       #address:Ljava/lang/String;
    .restart local v5       #cursor:Landroid/database/Cursor;
    :cond_67
    if-nez v11, :cond_29

    .line 1074
    if-eqz v10, :cond_7e

    if-nez v4, :cond_7e

    .line 1075
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object p3, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1076
    const/4 v6, 0x1

    goto :goto_29

    .line 1078
    :cond_7e
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    .line 1044
    .end local v1           #address:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_8e
    add-int/lit8 v11, v11, 0x1

    goto :goto_13
.end method

.method private isLoading(I)Z
    .registers 3
    .parameter "partitionIndex"

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1099
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1100
    const-string v1, ""

    .line 1108
    :cond_f
    :goto_f
    return-object v1

    .line 1103
    :cond_10
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, emailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1108
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .registers 16
    .parameter "partition"
    .parameter "cursor"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 837
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 839
    .local v5, newCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 840
    .local v1, curpartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iput-boolean v8, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 842
    if-nez p2, :cond_20

    .line 843
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : cursor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 p2, 0x0

    .line 885
    .end local p2
    :goto_1f
    return-object p2

    .line 847
    .restart local p2
    :cond_20
    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_38

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v7, v12, :cond_38

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v7

    if-nez v7, :cond_38

    .line 850
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : this partition has no duplication."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 854
    :cond_38
    const/4 v0, 0x0

    .line 855
    .local v0, count:I
    invoke-interface {p2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 857
    :cond_3c
    :goto_3c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    sget-boolean v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_48

    if-ge v0, v12, :cond_7f

    .line 858
    :cond_48
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, displayName:Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 862
    .local v3, emailAddress:Ljava/lang/String;
    sget-object v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 863
    .local v4, imageIndex:I
    const/4 v6, 0x0

    .line 866
    .local v6, pictureData:Ljava/lang/String;
    const-string v7, "gal_search_show_more"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 867
    iput-boolean v9, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    goto :goto_3c

    .line 872
    :cond_64
    if-eq v4, v10, :cond_6a

    .line 873
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 877
    :cond_6a
    invoke-direct {p0, v3, p1, v6}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 878
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v6, v7, v11

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 883
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #emailAddress:Ljava/lang/String;
    .end local v4           #imageIndex:I
    .end local v6           #pictureData:Ljava/lang/String;
    :cond_7f
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v5

    .line 885
    goto :goto_1f
.end method

.method public static setBackupOfSearchedString(Ljava/lang/String;)V
    .registers 1
    .parameter "backupOfSearchedString"

    .prologue
    .line 602
    sput-object p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    .line 603
    return-void
.end method


# virtual methods
.method public RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 13
    .parameter "acckey"
    .parameter "constraint"

    .prologue
    .line 353
    if-nez p3, :cond_27

    const-string v7, ""

    .line 354
    .local v7, filter:Ljava/lang/String;
    :goto_4
    const/4 v8, 0x0

    .line 357
    .local v8, ric:Landroid/database/Cursor;
    :try_start_5
    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_2c

    move-result-object v8

    .line 363
    .end local v1           #uri:Landroid/net/Uri;
    :goto_26
    return-object v8

    .line 353
    .end local v7           #filter:Ljava/lang/String;
    .end local v8           #ric:Landroid/database/Cursor;
    :cond_27
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 359
    .restart local v7       #filter:Ljava/lang/String;
    .restart local v8       #ric:Landroid/database/Cursor;
    :catch_2c
    move-exception v6

    .line 360
    .local v6, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_26
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .registers 16
    .parameter "v"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v10, -0x1

    .line 536
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v7

    check-cast v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 537
    .local v7, directoryPartition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-object v2, v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 538
    .local v2, directoryType:Ljava/lang/String;
    iget-object v3, v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 539
    .local v3, directoryName:Ljava/lang/String;
    iget-boolean v0, v7, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v0, :cond_13

    .line 540
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_12
    return-void

    .line 542
    :cond_13
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, displayName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, emailAddress:Ljava/lang/String;
    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 547
    .local v8, imageIndex:I
    sget-boolean v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v0, :cond_34

    .line 548
    const-string v0, "system_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 550
    .local v9, indexSystemId:I
    if-eq v9, v10, :cond_34

    .line 551
    const-string v5, "(Group)"

    .line 554
    .end local v9           #indexSystemId:I
    :cond_34
    const/4 v6, 0x0

    .line 557
    .local v6, pictureData:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 558
    :cond_41
    move-object v4, v5

    .line 560
    const/4 v5, 0x0

    .line 564
    :cond_43
    if-eq v8, v10, :cond_49

    .line 565
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_49
    move-object v0, p0

    move-object v1, p1

    .line 570
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected abstract bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public disableOnlineSearch(Z)V
    .registers 2
    .parameter "disable"

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    .line 491
    return-void
.end method

.method public doGalSearch(I)V
    .registers 9
    .parameter "partitionIndex"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 742
    if-lez p1, :cond_2b

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 745
    .local v2, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->clearPartitions()V

    .line 746
    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    iget-object v4, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    invoke-virtual {v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 747
    iput-boolean v6, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 748
    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 749
    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    sget-object v4, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 774
    .end local v2           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_2a
    return-void

    .line 754
    :cond_2b
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->clearPartitions()V

    .line 756
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v0

    .line 757
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    if-ge v1, v0, :cond_40

    .line 758
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 759
    .restart local v2       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iput-boolean v5, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 757
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 761
    .end local v2           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_40
    const/4 v1, 0x0

    :goto_41
    if-ge v1, v0, :cond_2a

    .line 762
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 763
    .restart local v2       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_80

    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 765
    :cond_61
    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    iget-object v4, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    invoke-virtual {v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 766
    iput-boolean v6, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 767
    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 768
    iget-object v3, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    sget-object v4, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 769
    iput-boolean v5, v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 770
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 761
    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_41
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 591
    new-instance v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;)V

    return-object v0
.end method

.method public getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 10
    .parameter "constraint"

    .prologue
    const/4 v4, 0x0

    .line 1113
    const/4 v6, 0x0

    .line 1116
    .local v6, groupCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_43

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1121
    .local v7, inputText:Ljava/lang/String;
    :goto_8
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "account_type"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "system_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(title like \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1126
    return-object v6

    .line 1119
    .end local v7           #inputText:Ljava/lang/String;
    :cond_43
    const-string v7, ""

    .restart local v7       #inputText:Ljava/lang/String;
    goto :goto_8
.end method

.method protected getItemViewType(II)I
    .registers 5
    .parameter "partitionIndex"
    .parameter "position"

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 520
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected abstract inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isEnabled(II)Z
    .registers 4
    .parameter "partitionIndex"
    .parameter "position"

    .prologue
    .line 582
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "partitionIndex"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 526
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 527
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_f

    .line 528
    invoke-virtual {p0, p5}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 530
    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {p0, p5}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_e
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .registers 27
    .parameter "constraint"
    .parameter "directoryCursor"
    .parameter "defaultPartitionCursor"

    .prologue
    .line 612
    if-eqz p2, :cond_156

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 614
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 615
    .local v17, preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v6, directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    :cond_11
    :goto_11
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_133

    .line 617
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 621
    .local v10, id:J
    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_11

    .line 625
    new-instance v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    invoke-direct/range {v16 .. v16}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;-><init>()V

    .line 626
    .local v16, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    .line 627
    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 628
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 629
    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 630
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 631
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 632
    .local v15, packageName:Ljava/lang/String;
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 633
    .local v18, resourceId:I
    if-eqz v15, :cond_c2

    if-eqz v18, :cond_c2

    .line 635
    :try_start_80
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 637
    .local v19, resources:Landroid/content/res/Resources;
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_c2

    .line 639
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_c2} :catch_fe

    .line 651
    .end local v19           #resources:Landroid/content/res/Resources;
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12c

    .line 653
    move-object/from16 v17, v16

    goto/16 :goto_11

    .line 642
    :catch_fe
    move-exception v7

    .line 643
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c2

    .line 655
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_12c
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 659
    .end local v10           #id:J
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v18           #resourceId:I
    :cond_133
    if-eqz v17, :cond_13e

    .line 660
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 663
    :cond_13e
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_142
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_156

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 664
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_142

    .line 668
    .end local v6           #directories:Ljava/util/List;,"Ljava/util/List<Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v17           #preferredDirectory:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_156
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v4

    .line 669
    .local v4, count:I
    const/4 v12, 0x0

    .line 673
    .local v12, limit:I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    .line 676
    if-eqz p3, :cond_177

    :try_start_166
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v20

    if-lez v20, :cond_177

    .line 677
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 680
    :cond_177
    if-nez p3, :cond_1b5

    const/4 v5, 0x0

    .line 683
    .local v5, defaultPartitionCount:I
    :goto_17a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    move/from16 v20, v0

    sub-int v12, v20, v5

    .line 687
    const/4 v8, 0x1

    .local v8, i:I
    :goto_183
    if-ge v8, v4, :cond_1d7

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 689
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 691
    if-gtz v12, :cond_199

    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_1ba

    .line 692
    :cond_199
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-nez v20, :cond_1b2

    .line 693
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 694
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 687
    :cond_1b2
    :goto_1b2
    add-int/lit8 v8, v8, 0x1

    goto :goto_183

    .line 680
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_1b5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_17a

    .line 697
    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_1ba
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 698
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1cb
    .catchall {:try_start_166 .. :try_end_1cb} :catchall_1cc

    goto :goto_1b2

    .line 702
    .end local v5           #defaultPartitionCount:I
    .end local v8           #i:I
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_1cc
    move-exception v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    throw v20

    .restart local v5       #defaultPartitionCount:I
    .restart local v8       #i:I
    :cond_1d7
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setNotificationsEnabled(Z)V

    .line 707
    const/4 v8, 0x1

    :goto_1e1
    if-ge v8, v4, :cond_2a7

    .line 708
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 711
    .restart local v16       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.android.exchange"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_20c

    .line 707
    :cond_209
    :goto_209
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e1

    .line 716
    :cond_20c
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_292

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 719
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 720
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_269

    .line 721
    new-instance v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    .line 723
    :cond_269
    sget-boolean v20, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_286

    .line 725
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 731
    :goto_278
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_209

    .line 729
    :cond_286
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    goto :goto_278

    .line 733
    .end local v13           #msg:Landroid/os/Message;
    :cond_292
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_209

    .line 735
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_209

    .line 739
    .end local v16           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_2a7
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .registers 7
    .parameter "constraint"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_52

    .line 797
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 802
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 804
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 805
    if-eqz p1, :cond_27

    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setBackupOfSearchedString(Ljava/lang/String;)V

    .line 807
    :cond_27
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 808
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 810
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_48

    .line 812
    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    .line 813
    :try_start_38
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isAllPartitionEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    .line 815
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->addShowMoreButtonAtlastPatition()V

    .line 817
    :cond_47
    monitor-exit v2

    .line 829
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_48
    :goto_48
    return-void

    .line 817
    .restart local v0       #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_49
    move-exception v1

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_49

    throw v1

    .line 822
    :cond_4c
    if-eqz p3, :cond_48

    .line 823
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 826
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_52
    if-eqz p3, :cond_48

    .line 827
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_48
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    .line 478
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;Ljava/lang/Long;)V
    .registers 3
    .parameter "account"
    .parameter "AccId"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    .line 485
    iput-object p2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    .line 486
    return-void
.end method

.method showSearchPendingIfNotComplete(I)V
    .registers 4
    .parameter "partitionIndex"

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 779
    .local v0, partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_17

    .line 780
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->changeCursor(ILandroid/database/Cursor;)V

    .line 783
    .end local v0           #partition:Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_17
    return-void
.end method
