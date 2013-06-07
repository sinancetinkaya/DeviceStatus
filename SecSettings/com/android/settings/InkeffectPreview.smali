.class public Lcom/android/settings/InkeffectPreview;
.super Landroid/app/Activity;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mInkcolorItem:[Ljava/lang/String;

.field private static mOldVal:I

.field private static mRefreshVal:Z


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mInkEffectHelptext:Landroid/widget/TextView;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/android/settings/InkeffectPreview;->mOldVal:I

    .line 47
    sput-boolean v0, Lcom/android/settings/InkeffectPreview;->mRefreshVal:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    return-void

    .line 50
    :array_14
    .array-data 0x4
        0xe0t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
        0xdat 0x1t 0x2t 0x7ft
        0xd6t 0x1t 0x2t 0x7ft
        0xdet 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
        0xdct 0x1t 0x2t 0x7ft
    .end array-data

    .line 62
    :array_2a
    .array-data 0x4
        0xe1t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
        0xe3t 0x1t 0x2t 0x7ft
        0xdbt 0x1t 0x2t 0x7ft
        0xd7t 0x1t 0x2t 0x7ft
        0xdft 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xd9t 0x1t 0x2t 0x7ft
        0xddt 0x1t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v2, 0x7f04006f

    invoke-virtual {p0, v2}, Lcom/android/settings/InkeffectPreview;->setContentView(I)V

    .line 80
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    .line 81
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cdf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 82
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 83
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 84
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 86
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 87
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 89
    sget-object v2, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090ce9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, mInkEffectColor:I
    const v2, 0x7f0b00e8

    invoke-virtual {p0, v2}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_130

    .line 95
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    :goto_ca
    const v2, 0x7f0b0111

    invoke-virtual {p0, v2}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectHelptext:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0b00c8

    invoke-virtual {p0, v2}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f040070

    sget-object v5, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 105
    sget-boolean v2, Lcom/android/settings/InkeffectPreview;->mRefreshVal:Z

    if-nez v2, :cond_113

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_ink_effect"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/InkeffectPreview;->mOldVal:I

    .line 107
    :cond_113
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 110
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 111
    const v2, 0x7f0b016a

    invoke-virtual {p0, v2}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 112
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_12f
    return-void

    .line 97
    :cond_130
    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_ca
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 145
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090126

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 147
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0904f3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 121
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_40

    .line 122
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_25
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_59

    .line 133
    :goto_3d
    sput-boolean v4, Lcom/android/settings/InkeffectPreview;->mRefreshVal:Z

    .line 134
    return-void

    .line 126
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_58} :catch_59

    goto :goto_25

    .line 130
    :catch_59
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_d
    return v0

    .line 156
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    sget v3, Lcom/android/settings/InkeffectPreview;->mOldVal:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    sput-boolean v4, Lcom/android/settings/InkeffectPreview;->mRefreshVal:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_d

    .line 162
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    sput v1, Lcom/android/settings/InkeffectPreview;->mOldVal:I

    .line 164
    sput-boolean v4, Lcom/android/settings/InkeffectPreview;->mRefreshVal:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_d

    .line 154
    :pswitch_data_3c
    .packed-switch 0x7f0b03e3
        :pswitch_e
        :pswitch_1f
    .end packed-switch
.end method
