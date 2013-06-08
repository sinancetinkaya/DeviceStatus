.class public Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;
.super Landroid/widget/BaseAdapter;
.source "FactoryTestMainAdapter.java"


# static fields
.field public static ALL_PASS_STATE:Z

.field public static COLOR_PASS_BACKGROUND:I

.field public static COLOR_PASS_TEXT:I

.field public static final FONT_SIZE:F

.field public static SIMPLE_FUNCTION_TEST:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    sput v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->SIMPLE_FUNCTION_TEST:I

    .line 32
    const v0, -0xffff01

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->COLOR_PASS_BACKGROUND:I

    .line 33
    const/4 v0, -0x1

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->COLOR_PASS_TEXT:I

    .line 34
    invoke-static {}, Lcom/sec/factory/support/Support$Feature;->getFactoryTextSize()F

    move-result v0

    sput v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    .line 39
    sput-boolean v1, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "FactoryTestMainAdapter"

    const-string v1, "FactoryTestMainAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Factorytest FONT_SIZE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 167
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "pos"

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 48
    move-object/from16 v18, p2

    .line 50
    .local v18, view:Landroid/view/View;
    if-nez v18, :cond_23

    .line 51
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    const v20, 0x7f030011

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 54
    :cond_23
    const v19, 0x7f090089

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 55
    .local v8, ll:Landroid/widget/LinearLayout;
    const v19, 0x7f09008a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 56
    .local v17, tv:Landroid/widget/TextView;
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWillNotCacheDrawing(Z)V

    .line 57
    sget v19, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_4f

    .line 58
    sget v19, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->FONT_SIZE:F

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    :cond_4f
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, p1, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemName_Position(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, itemName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemResult(I)B

    move-result v19

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_ee

    .line 66
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " => O"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "PASS ITEM : position="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ALL_PASS_STATE="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v19, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const v19, -0xffff01

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 79
    :goto_da
    sget-boolean v19, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    if-eqz v19, :cond_14c

    .line 80
    const v19, -0xffff01

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 85
    :goto_e6
    invoke-static/range {p1 .. p1}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemID(I)I

    move-result v19

    sparse-switch v19, :sswitch_data_3d8

    .line 163
    .end local v7           #itemName:Ljava/lang/String;
    .end local v8           #ll:Landroid/widget/LinearLayout;
    .end local v17           #tv:Landroid/widget/TextView;
    :cond_ed
    :goto_ed
    return-object v18

    .line 72
    .restart local v7       #itemName:Ljava/lang/String;
    .restart local v8       #ll:Landroid/widget/LinearLayout;
    .restart local v17       #tv:Landroid/widget/TextView;
    :cond_ee
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " => X"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "NorF ITEM : position="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ALL_PASS_STATE="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->ALL_PASS_STATE:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/high16 v19, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_146} :catch_147

    goto :goto_da

    .line 159
    .end local v7           #itemName:Ljava/lang/String;
    .end local v8           #ll:Landroid/widget/LinearLayout;
    .end local v17           #tv:Landroid/widget/TextView;
    :catch_147
    move-exception v4

    .line 160
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/Exception;)V

    goto :goto_ed

    .line 82
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #itemName:Ljava/lang/String;
    .restart local v8       #ll:Landroid/widget/LinearLayout;
    .restart local v17       #tv:Landroid/widget/TextView;
    :cond_14c
    const/16 v19, 0x0

    :try_start_14e
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_e6

    .line 88
    :sswitch_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v9

    .line 89
    .local v9, moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v9}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v15

    .line 90
    .local v15, state:I
    invoke-virtual {v9}, Lcom/sec/factory/modules/ModuleAudio;->getMicCount()I

    move-result v11

    .line 91
    .local v11, nMic:I
    invoke-static {}, Lcom/sec/factory/modules/ModuleAudio;->isSupportSecondMicTest()Z

    move-result v6

    .line 92
    .local v6, isSupportMIC2:Z
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getCurrentLoopbackPath : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", nMic : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v13, 0x0

    .line 96
    .local v13, route:[Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_209

    .line 97
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    .end local v13           #route:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, " RCV"

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const-string v20, " SPK_F"

    aput-object v20, v13, v19

    const/16 v19, 0x2

    const-string v20, " SPK_R"

    aput-object v20, v13, v19

    const/16 v19, 0x3

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x5

    const-string v20, " E/P"

    aput-object v20, v13, v19

    .line 109
    .restart local v13       #route:[Ljava/lang/String;
    :goto_1c3
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FactoryTestMain.IsLoopBack2 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-boolean v19, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    if-nez v19, :cond_ed

    .line 112
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_ed

    .line 113
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v13, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ed

    .line 100
    :cond_209
    if-eqz v6, :cond_23c

    .line 101
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    .end local v13           #route:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, " RCV1"

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const-string v20, " SPK"

    aput-object v20, v13, v19

    const/16 v19, 0x2

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x3

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x5

    const-string v20, " E/P"

    aput-object v20, v13, v19

    const/16 v19, 0x6

    const-string v20, "RCV_2MIC"

    aput-object v20, v13, v19

    .restart local v13       #route:[Ljava/lang/String;
    goto :goto_1c3

    .line 105
    :cond_23c
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    .end local v13           #route:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, " RCV"

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const-string v20, " SPK"

    aput-object v20, v13, v19

    const/16 v19, 0x2

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x3

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const-string v20, " "

    aput-object v20, v13, v19

    const/16 v19, 0x5

    const-string v20, " E/P"

    aput-object v20, v13, v19

    .restart local v13       #route:[Ljava/lang/String;
    goto/16 :goto_1c3

    .line 119
    .end local v6           #isSupportMIC2:Z
    .end local v9           #moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    .end local v11           #nMic:I
    .end local v13           #route:[Ljava/lang/String;
    .end local v15           #state:I
    :sswitch_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v10

    .line 120
    .local v10, moduleAudioLb2:Lcom/sec/factory/modules/ModuleAudio;
    invoke-virtual {v10}, Lcom/sec/factory/modules/ModuleAudio;->getCurrentLoopbackPath()I

    move-result v16

    .line 121
    .local v16, stateLb2:I
    invoke-virtual {v10}, Lcom/sec/factory/modules/ModuleAudio;->getMicCount()I

    move-result v12

    .line 122
    .local v12, nMicLb2:I
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getCurrentLoopbackPathloopback2 : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", nMic : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v14, 0x0

    .line 126
    .local v14, routeLb2:[Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v12, v0, :cond_323

    .line 127
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .end local v14           #routeLb2:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, " RCV"

    aput-object v20, v14, v19

    const/16 v19, 0x1

    const-string v20, " SPK_F"

    aput-object v20, v14, v19

    const/16 v19, 0x2

    const-string v20, " SPK_R"

    aput-object v20, v14, v19

    const/16 v19, 0x3

    const-string v20, " "

    aput-object v20, v14, v19

    const/16 v19, 0x4

    const-string v20, " "

    aput-object v20, v14, v19

    const/16 v19, 0x5

    const-string v20, " E/P"

    aput-object v20, v14, v19

    .line 135
    .restart local v14       #routeLb2:[Ljava/lang/String;
    :goto_2d5
    const-string v19, "FactoryTestMainAdapter"

    const-string v20, "getView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "FactoryTestMain.IsLoopBack2 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-boolean v22, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v19, 0x1

    sget-boolean v20, Lcom/sec/factory/app/factorytest/FactoryTestMain;->IsLoopBack2:Z

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_ed

    .line 138
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_ed

    .line 139
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v16

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ed

    .line 131
    :cond_323
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .end local v14           #routeLb2:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, " RCV"

    aput-object v20, v14, v19

    const/16 v19, 0x1

    const-string v20, " SPK"

    aput-object v20, v14, v19

    const/16 v19, 0x2

    const-string v20, " "

    aput-object v20, v14, v19

    const/16 v19, 0x3

    const-string v20, " "

    aput-object v20, v14, v19

    const/16 v19, 0x4

    const-string v20, " "

    aput-object v20, v14, v19

    const/16 v19, 0x5

    const-string v20, " E/P"

    aput-object v20, v14, v19

    .restart local v14       #routeLb2:[Ljava/lang/String;
    goto :goto_2d5

    .line 145
    .end local v10           #moduleAudioLb2:Lcom/sec/factory/modules/ModuleAudio;
    .end local v12           #nMicLb2:I
    .end local v14           #routeLb2:[Ljava/lang/String;
    .end local v16           #stateLb2:I
    :sswitch_34e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/factory/modules/ModuleCommunication;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleCommunication;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/factory/modules/ModuleCommunication;->isEnabledBtDevice()Z

    move-result v19

    if-eqz v19, :cond_382

    const-string v19, " ON"

    :goto_36d
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ed

    :cond_382
    const-string v19, " OFF"

    goto :goto_36d

    .line 151
    :sswitch_385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/factory/app/factorytest/FactoryTestMainAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/factory/modules/ModuleAudio;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModuleAudio;

    move-result-object v9

    .line 153
    .restart local v9       #moduleAudio:Lcom/sec/factory/modules/ModuleAudio;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, " "

    aput-object v20, v5, v19

    const/16 v19, 0x1

    const-string v20, " "

    aput-object v20, v5, v19

    const/16 v19, 0x2

    const-string v20, " "

    aput-object v20, v5, v19

    const/16 v19, 0x3

    const-string v20, " UP DOWN"

    aput-object v20, v5, v19

    const/16 v19, 0x4

    const-string v20, " DOWN UP"

    aput-object v20, v5, v19

    .line 156
    .local v5, earKey:[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/sec/factory/modules/ModuleAudio;->getEarKeyState()I

    move-result v20

    aget-object v20, v5, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_3d5} :catch_147

    goto/16 :goto_ed

    .line 85
    nop

    :sswitch_data_3d8
    .sparse-switch
        0x1 -> :sswitch_154
        0x2 -> :sswitch_34e
        0xd -> :sswitch_385
        0x2a -> :sswitch_268
    .end sparse-switch
.end method
