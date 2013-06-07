.class public Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ExpandAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockscreenshortcut/ExpandAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private settingName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;Landroid/content/Context;IILjava/util/List;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p5, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    .line 306
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 303
    const-string v0, "com.android.settings.Settings"

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->settingName:Ljava/lang/String;

    .line 308
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x7f0b0176

    const v10, 0x7f0b014b

    const v9, 0x7f0b0086

    const v8, 0x7f0400df

    const/4 v7, 0x0

    .line 312
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    invoke-virtual {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 315
    .local v4, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_55

    .line 316
    const v5, 0x7f04007b

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 317
    new-instance v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    invoke-direct {v3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;-><init>()V

    .line 319
    .local v3, holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->text:Landroid/widget/TextView;

    .line 320
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 322
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_ea

    .line 336
    if-eqz p1, :cond_42

    const/4 v5, 0x6

    if-ne p1, v5, :cond_8e

    .line 337
    :cond_42
    if-nez p1, :cond_7d

    .line 338
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 339
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 340
    .local v1, appName:Landroid/widget/TextView;
    const v5, 0x7f090c3b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 386
    :cond_54
    :goto_54
    return-object p2

    .line 326
    .end local v1           #appName:Landroid/widget/TextView;
    .end local v3           #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    :cond_55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    .line 327
    .restart local v3       #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    if-nez v3, :cond_34

    .line 328
    const v5, 0x7f04007b

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 329
    new-instance v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;

    .end local v3           #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-direct {v3}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;-><init>()V

    .line 330
    .restart local v3       #holder:Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->text:Landroid/widget/TextView;

    .line 331
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 332
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_34

    .line 343
    :cond_7d
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 344
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 345
    .restart local v1       #appName:Landroid/widget/TextView;
    const v5, 0x7f090c3c

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_54

    .line 350
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_8e
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .restart local v1       #appName:Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 352
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_c1

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_c1
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 355
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_54

    .line 359
    .end local v0           #appIcon:Landroid/widget/ImageView;
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_ea
    const/4 v2, 0x0

    .line 360
    .local v2, as:I
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    if-eqz v5, :cond_11b

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 363
    :goto_fb
    if-eqz p1, :cond_ff

    if-ne p1, v2, :cond_137

    .line 364
    :cond_ff
    if-nez p1, :cond_125

    .line 365
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 366
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    .restart local v1       #appName:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I
    invoke-static {v5}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I

    move-result v5

    if-nez v5, :cond_11d

    const v5, 0x7f090c3c

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_54

    .line 361
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_11b
    const/4 v2, 0x0

    goto :goto_fb

    .line 368
    .restart local v1       #appName:Landroid/widget/TextView;
    :cond_11d
    const v5, 0x7f090c3b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_54

    .line 371
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_125
    invoke-virtual {v4, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 372
    invoke-virtual {p2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 373
    .restart local v1       #appName:Landroid/widget/TextView;
    const v5, 0x7f090c3c

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_54

    .line 378
    .end local v1           #appName:Landroid/widget/TextView;
    :cond_137
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .restart local v1       #appName:Landroid/widget/TextView;
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 380
    .restart local v0       #appIcon:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_16a

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_16a
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;->this$0:Lcom/android/settings/lockscreenshortcut/ExpandAppList;

    #getter for: Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_54
.end method
