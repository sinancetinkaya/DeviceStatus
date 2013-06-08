.class final Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;


# direct methods
.method private constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Lcom/android/common/contacts/BaseEmailAddressAdapterSec$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resultValue"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    check-cast p1, Landroid/database/Cursor;

    .end local p1
    #calls: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$400(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 21
    .parameter "constraint"

    .prologue
    .line 218
    const/4 v11, 0x0

    .line 219
    .local v11, directoryCursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 221
    .local v17, recentCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$000(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v3, 0x1

    #setter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$002(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;Z)Z

    .line 226
    :cond_26
    const/4 v15, 0x0

    .line 227
    .local v15, mergeResultCursor:Landroid/database/MergeCursor;
    new-instance v18, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v18 .. v18}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 228
    .local v18, results:Landroid/widget/Filter$FilterResults;
    const/4 v10, 0x0

    .line 229
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 230
    .local v14, groupCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 231
    .local v16, rICursor1:Landroid/database/Cursor;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_101

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 234
    .local v9, builder:Landroid/net/Uri$Builder;
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_119

    .line 235
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 243
    :goto_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 244
    const-string v1, "name_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    const-string v1, "type_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$200(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    :cond_72
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 248
    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v1, :cond_84

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v14

    .line 250
    :cond_84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-boolean v1, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    if-nez v1, :cond_b1

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$300(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    .line 265
    :cond_b1
    if-nez p1, :cond_13b

    :try_start_b3
    const-string v13, ""

    .line 267
    .local v13, filter:Ljava/lang/String;
    :goto_b5
    const-string v1, "content://com.android.email.provider/emailaddresscache/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 268
    .local v4, emailCacheUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    iget-object v3, v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "accountName as display_name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "accountAddress as data1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "usageCount DESC, accountName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_dd} :catch_141

    move-result-object v17

    .line 273
    .end local v4           #emailCacheUri:Landroid/net/Uri;
    .end local v13           #filter:Ljava/lang/String;
    :goto_de
    if-eqz v16, :cond_15a

    if-eqz v17, :cond_15a

    .line 274
    if-eqz v14, :cond_e8

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_145

    .line 275
    :cond_e8
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 283
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_f9
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 327
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_101
    :goto_101
    if-eqz v14, :cond_107

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_10b

    :cond_107
    if-nez v16, :cond_10b

    if-eqz v17, :cond_1e5

    .line 328
    :cond_10b
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 333
    :goto_118
    return-object v18

    .line 238
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    :cond_119
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    #getter for: Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I
    invoke-static {v5}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->access$100(Lcom/android/common/contacts/BaseEmailAddressAdapterSec;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    goto/16 :goto_4a

    .line 265
    :cond_13b
    :try_start_13b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_141

    move-result-object v13

    goto/16 :goto_b5

    .line 269
    :catch_141
    move-exception v12

    .line 270
    .local v12, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_de

    .line 279
    .end local v12           #e:Ljava/lang/Exception;
    :cond_145
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_f9

    .line 284
    :cond_15a
    if-eqz v16, :cond_18b

    .line 285
    if-eqz v14, :cond_162

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_179

    .line 286
    :cond_162
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 294
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_170
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_101

    .line 290
    :cond_179
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_170

    .line 295
    :cond_18b
    if-eqz v17, :cond_1bd

    .line 296
    if-eqz v14, :cond_193

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_1ab

    .line 297
    :cond_193
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 305
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    :goto_1a1
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_101

    .line 301
    :cond_1ab
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    goto :goto_1a1

    .line 307
    :cond_1bd
    if-eqz v14, :cond_1c3

    sget-boolean v1, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_1cd

    .line 308
    :cond_1c3
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_101

    .line 310
    :cond_1cd
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15           #mergeResultCursor:Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 313
    .restart local v15       #mergeResultCursor:Landroid/database/MergeCursor;
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_101

    .line 330
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    :cond_1e5
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_118
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 338
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_16

    .line 339
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 340
    .local v0, cursors:[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 342
    .end local v0           #cursors:[Landroid/database/Cursor;
    :cond_16
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/android/common/contacts/BaseEmailAddressAdapterSec;

    invoke-virtual {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 343
    return-void
.end method
