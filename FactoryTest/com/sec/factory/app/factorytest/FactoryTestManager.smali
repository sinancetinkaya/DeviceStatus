.class public Lcom/sec/factory/app/factorytest/FactoryTestManager;
.super Ljava/lang/Object;
.source "FactoryTestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    }
.end annotation


# static fields
.field private static INVISIBLE_ITEM_COUNT:I

.field private static mAdapter:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

.field private static mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mAdapter:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->INVISIBLE_ITEM_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static convertorID_XML(B)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 340
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, result:Ljava/lang/String;
    const-string v1, "FactoryTestManager"

    const-string v2, "convertorID_XML"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-object v0
.end method

.method public static convertorNVValue(B)Ljava/lang/String;
    .registers 2
    .parameter "nvValue"

    .prologue
    .line 327
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_7

    .line 328
    const-string v0, "[N]"

    .line 336
    :goto_6
    return-object v0

    .line 329
    :cond_7
    const/16 v0, 0x45

    if-ne p0, v0, :cond_e

    .line 330
    const-string v0, "[E]"

    goto :goto_6

    .line 331
    :cond_e
    const/16 v0, 0x50

    if-ne p0, v0, :cond_15

    .line 332
    const-string v0, "[P]"

    goto :goto_6

    .line 333
    :cond_15
    const/16 v0, 0x46

    if-ne p0, v0, :cond_1c

    .line 334
    const-string v0, "[F]"

    goto :goto_6

    .line 336
    :cond_1c
    const-string v0, "[None]"

    goto :goto_6
.end method

.method public static getAllitemPass()Z
    .registers 5

    .prologue
    .line 347
    const/4 v1, 0x1

    .line 348
    .local v1, passResult:Z
    const-string v2, "FactoryTestManager"

    const-string v3, "getAllitemPass"

    const-string v4, "getAllitemPass check"

    invoke-static {v2, v3, v4}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sget-object v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 350
    sget-object v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v2, v2, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v2}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1d

    .line 351
    const/4 v1, 0x0

    .line 349
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 353
    :cond_20
    return v1
.end method

.method public static getChildItems(I)[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    .registers 7
    .parameter "parentID"

    .prologue
    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;>;"
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    .local v0, arr$:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v4, :cond_19

    aget-object v3, v0, v2

    .line 311
    .local v3, info:Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v5

    if-ne v5, p0, :cond_16

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 315
    .end local v3           #info:Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    :cond_19
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    return-object v5
.end method

.method public static getClickable(I)Z
    .registers 2
    .parameter "position"

    .prologue
    .line 301
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mClickable:Z
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$600(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Z

    move-result v0

    return v0
.end method

.method public static getEnable(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 291
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v1, v1, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v1

    if-ne v1, p0, :cond_12

    .line 292
    const/4 v1, 0x1

    .line 293
    :goto_11
    return v1

    .line 290
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static getItemCount()I
    .registers 2

    .prologue
    .line 191
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v0, v0

    sget v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->INVISIBLE_ITEM_COUNT:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getItemID(I)I
    .registers 2
    .parameter "position"

    .prologue
    .line 195
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v0

    return v0
.end method

.method public static getItemNVKey(I)B
    .registers 2
    .parameter "position"

    .prologue
    .line 226
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v0

    return v0
.end method

.method public static getItemName_Position(I)Ljava/lang/String;
    .registers 6
    .parameter "position"

    .prologue
    .line 199
    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_39

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v4, v4, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v4, v4, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :goto_38
    return-object v3

    .line 203
    :cond_39
    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getChildItems(I)[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    move-result-object v0

    .line 204
    .local v0, childList:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v2, mNVTextBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4b
    array-length v3, v0

    if-ge v1, v3, :cond_5f

    .line 206
    aget-object v3, v0, v1

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 209
    :cond_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v4, v4, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_38
.end method

.method public static getItemPosition_ID(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 264
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v1, v1, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v1

    if-ne v1, p0, :cond_11

    .line 268
    .end local v0           #i:I
    :goto_10
    return v0

    .line 263
    .restart local v0       #i:I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static getItemResult(I)B
    .registers 2
    .parameter "position"

    .prologue
    .line 230
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v0

    return v0
.end method

.method public static initialize()V
    .registers 22

    .prologue
    .line 101
    const-string v2, "FactoryTestManager"

    const-string v20, "initialize"

    const-string v21, "FactoryTestMain Initialize"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v2, 0x0

    sput v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->INVISIBLE_ITEM_COUNT:I

    .line 104
    invoke-static {}, Lcom/sec/factory/support/Support$FactoryTestMenu;->getFactoryTestInfo()[Ljava/lang/String;

    move-result-object v18

    .line 105
    .local v18, testList:[Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v19, visibilityItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v14, invisibilityItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;>;"
    move-object/from16 v10, v18

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_24
    move/from16 v0, v16

    if-ge v13, v0, :cond_d2

    aget-object v17, v10, v13

    .line 108
    .local v17, test:Ljava/lang/String;
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 110
    .local v15, item:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, id:I
    const/4 v2, 0x1

    aget-object v4, v15, v2

    .line 112
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v15, v2

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v5, v2

    .line 113
    .local v5, nv:B
    const/16 v6, 0x4e

    .line 114
    .local v6, result:B
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 115
    invoke-static {v5}, Lcom/sec/factory/support/NVAccessor;->getNV(B)B

    move-result v6

    .line 117
    :cond_5e
    const/4 v2, 0x4

    aget-object v2, v15, v2

    const-string v20, "null"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    const/4 v9, -0x1

    .line 120
    .local v9, parentID:I
    :goto_6c
    const/4 v2, 0x3

    aget-object v11, v15, v2

    .line 121
    .local v11, extras:Ljava/lang/String;
    const/4 v7, 0x0

    .line 122
    .local v7, auto:Z
    const/4 v8, 0x1

    .line 124
    .local v8, clickable:Z
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "auto"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 125
    const/4 v7, 0x1

    .line 126
    const/4 v8, 0x0

    .line 128
    :cond_81
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "clickable"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 129
    const/4 v8, 0x1

    .line 131
    :cond_90
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "notclickable"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 132
    const/4 v8, 0x0

    .line 134
    :cond_9f
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v20, "invisibility"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 135
    new-instance v2, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    invoke-direct/range {v2 .. v9}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;-><init>(ILjava/lang/String;BBZZI)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->INVISIBLE_ITEM_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->INVISIBLE_ITEM_COUNT:I

    .line 107
    :goto_bb
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_24

    .line 117
    .end local v7           #auto:Z
    .end local v8           #clickable:Z
    .end local v9           #parentID:I
    .end local v11           #extras:Ljava/lang/String;
    :cond_bf
    const/4 v2, 0x4

    aget-object v2, v15, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_6c

    .line 139
    .restart local v7       #auto:Z
    .restart local v8       #clickable:Z
    .restart local v9       #parentID:I
    .restart local v11       #extras:Ljava/lang/String;
    :cond_c7
    new-instance v2, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    invoke-direct/range {v2 .. v9}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;-><init>(ILjava/lang/String;BBZZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 144
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nv:B
    .end local v6           #result:B
    .end local v7           #auto:Z
    .end local v8           #clickable:Z
    .end local v9           #parentID:I
    .end local v11           #extras:Ljava/lang/String;
    .end local v15           #item:[Ljava/lang/String;
    .end local v17           #test:Ljava/lang/String;
    :cond_d2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v12, factoryTestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;>;"
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    sput-object v2, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    .line 149
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setResultParent()V

    .line 150
    return-void
.end method

.method public static isAutoTest(I)Z
    .registers 2
    .parameter "position"

    .prologue
    .line 297
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mAutoTest:Z
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$500(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Z

    move-result v0

    return v0
.end method

.method public static isTest(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 320
    sget-object v1, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v1, v1, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I
    invoke-static {v1}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v1

    if-ne v1, p0, :cond_12

    .line 321
    const/4 v1, 0x1

    .line 323
    :goto_11
    return v1

    .line 319
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    :cond_15
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mAdapter:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method

.method public static setAdapter(Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;)V
    .registers 1
    .parameter "adapter"

    .prologue
    .line 183
    sput-object p0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mAdapter:Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;

    .line 184
    return-void
.end method

.method public static setItemResult(IB)V
    .registers 6
    .parameter "position"
    .parameter "itemResult"

    .prologue
    .line 234
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", itemResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, -0x1

    if-le p0, v0, :cond_71

    .line 238
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_72

    .line 239
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$102(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;B)B

    .line 240
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = write : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_60
    invoke-static {}, Lcom/sec/factory/support/FtUtil;->isFactoryAppAPO()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 246
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/factory/support/NVAccessor;->setNV(BB)V

    .line 249
    :cond_71
    return-void

    .line 242
    :cond_72
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = PASS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method

.method public static setItemResultWithoutNVUpdate(IB)V
    .registers 6
    .parameter "position"
    .parameter "itemResult"

    .prologue
    .line 252
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResultWithoutNVUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", itemResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_5e

    .line 255
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v0, v0, p0

    #setter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v0, p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$102(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;B)B

    .line 256
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResultWithoutNVUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = write : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_5d
    return-void

    .line 258
    :cond_5e
    const-string v0, "FactoryTestManager"

    const-string v1, "setItemResultWithoutNVUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v3, v3, p0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = PASS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d
.end method

.method public static setResultParent()V
    .registers 10

    .prologue
    const/16 v9, 0x50

    .line 153
    const-string v5, "FactoryTestManager"

    const-string v6, "setResultParent"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v5, v5

    if-ge v0, v5, :cond_8d

    .line 158
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v5, v5, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v5

    if-ltz v5, :cond_57

    .line 159
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v5, v5, v0

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v4

    .line 160
    .local v4, parentID_Pre:I
    const/4 v1, 0x1

    .line 161
    .local v1, isPass:Z
    move v2, v0

    .local v2, j:I
    :goto_24
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v5, v5

    if-ge v2, v5, :cond_33

    .line 162
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v5

    if-gez v5, :cond_5a

    .line 170
    :cond_33
    if-eqz v1, :cond_72

    .line 171
    invoke-static {v4}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemPosition_ID(I)I

    move-result v5

    invoke-static {v5, v9}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->setItemResultWithoutNVUpdate(IB)V

    .line 173
    const-string v5, "FactoryTestManager"

    const-string v6, "setResultParent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PASS => (ID)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_56
    move v0, v2

    .line 157
    .end local v1           #isPass:Z
    .end local v2           #j:I
    .end local v4           #parentID_Pre:I
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 164
    .restart local v1       #isPass:Z
    .restart local v2       #j:I
    .restart local v4       #parentID_Pre:I
    :cond_5a
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I

    move-result v3

    .line 165
    .local v3, parentID_Curr:I
    if-ne v4, v3, :cond_33

    .line 167
    sget-object v5, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    aget-object v5, v5, v2

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B
    invoke-static {v5}, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B

    move-result v5

    if-eq v5, v9, :cond_6f

    .line 168
    const/4 v1, 0x0

    .line 161
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 175
    .end local v3           #parentID_Curr:I
    :cond_72
    const-string v5, "FactoryTestManager"

    const-string v6, "setResultParent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FAIL => (ID)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 180
    .end local v1           #isPass:Z
    .end local v2           #j:I
    .end local v4           #parentID_Pre:I
    :cond_8d
    return-void
.end method

.method public static size()I
    .registers 1

    .prologue
    .line 305
    sget-object v0, Lcom/sec/factory/app/factorytest/FactoryTestManager;->mFactoryTestItemInfo:[Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;

    array-length v0, v0

    return v0
.end method
