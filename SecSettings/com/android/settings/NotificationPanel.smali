.class public Lcom/android/settings/NotificationPanel;
.super Landroid/app/Activity;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field NotipicationPanelName:Landroid/widget/TextView;

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessChk:Landroid/widget/CheckBox;

.field private mBrightnessListener:Landroid/view/View$OnClickListener;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDragShadowBuilder:Lcom/android/settings/NotificationPanelDragShadowBuilder;

.field private mIsOnDragging:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNotificationPanel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOldItemPosition:I

.field private mOnDragItem:I

.field mPanelDragListener:Landroid/view/View$OnDragListener;

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPositionBarDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 95
    iput v1, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z

    .line 99
    iput v1, p0, Lcom/android/settings/NotificationPanel;->mOldItemPosition:I

    .line 284
    new-instance v0, Lcom/android/settings/NotificationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanel$1;-><init>(Lcom/android/settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Lcom/android/settings/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanel$2;-><init>(Lcom/android/settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 630
    new-instance v0, Lcom/android/settings/NotificationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanel$3;-><init>(Lcom/android/settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    .line 685
    new-instance v0, Lcom/android/settings/NotificationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanel$4;-><init>(Lcom/android/settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanel;->mPositionBarDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method private DropItemPos(Landroid/view/View;I)I
    .registers 6
    .parameter "iv"
    .parameter "type"

    .prologue
    const/16 v2, 0x14

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, dropItemPosition:I
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_1a

    .line 617
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_16

    .line 618
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 627
    :cond_16
    return v0

    .line 617
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 621
    :cond_1a
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_16

    .line 622
    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v2, :cond_16

    .line 623
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private LoadAppslist()V
    .registers 11

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, active_app_list:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_panel_candidate_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, cadidate_app_list:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, quickPanelActiveList:[Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 436
    .local v6, quickPanelCandidateList:[Ljava/lang/String;
    const-string v4, ""

    .line 437
    .local v4, panelName:Ljava/lang/String;
    const-string v2, ""

    .line 438
    .local v2, convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 439
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 441
    const-string v7, "NotificationPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Load] active_app_list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v7, "NotificationPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[Load] cadidate_app_list : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-eqz v0, :cond_66

    if-nez v1, :cond_67

    .line 465
    :cond_66
    return-void

    .line 447
    :cond_67
    const/4 v3, 0x0

    .local v3, i:I
    :goto_68
    array-length v7, v5

    if-ge v3, v7, :cond_7d

    .line 448
    aget-object v4, v5, v3

    .line 449
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #convertPanelString:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 450
    .restart local v2       #convertPanelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 453
    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    array-length v7, v5

    rsub-int/lit8 v7, v7, 0xa

    if-ge v3, v7, :cond_8d

    .line 454
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    .line 456
    :cond_8d
    const/4 v3, 0x0

    :goto_8e
    array-length v7, v6

    if-ge v3, v7, :cond_a3

    .line 457
    aget-object v4, v6, v3

    .line 458
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #convertPanelString:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 459
    .restart local v2       #convertPanelString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 462
    :cond_a3
    const/4 v3, 0x0

    :goto_a4
    array-length v7, v6

    rsub-int/lit8 v7, v7, 0xa

    if-ge v3, v7, :cond_66

    .line 463
    iget-object v7, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v8, "notification_panel_empty"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4
.end method

.method private SaveAppslist()V
    .registers 10

    .prologue
    const/16 v8, 0xa

    .line 468
    const-string v0, ""

    .line 469
    .local v0, active_app_list:Ljava/lang/String;
    const-string v2, ""

    .line 470
    .local v2, candidate_app_list:Ljava/lang/String;
    const-string v1, ""

    .line 471
    .local v1, active_content:Ljava/lang/String;
    const-string v3, ""

    .line 472
    .local v3, candidate_content:Ljava/lang/String;
    const-string v4, ""

    .line 474
    .local v4, convertPanelString:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d
    if-ge v5, v8, :cond_5e

    .line 475
    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 477
    .restart local v4       #convertPanelString:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 474
    :cond_1f
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 480
    :cond_22
    add-int/lit8 v6, v5, 0x1

    if-ne v8, v6, :cond_42

    .line 481
    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #active_content:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 485
    .restart local v1       #active_content:Ljava/lang/String;
    :goto_2e
    if-eqz v1, :cond_1f

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 483
    :cond_42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    .line 489
    :cond_5e
    const/4 v5, 0x0

    :goto_5f
    if-ge v5, v8, :cond_b0

    .line 490
    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 492
    .restart local v4       #convertPanelString:Ljava/lang/String;
    const-string v6, "notification_panel_empty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 489
    :cond_71
    :goto_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 495
    :cond_74
    add-int/lit8 v6, v5, 0x1

    if-ne v8, v6, :cond_94

    .line 496
    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #candidate_content:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 500
    .restart local v3       #candidate_content:Ljava/lang/String;
    :goto_80
    if-eqz v3, :cond_71

    .line 501
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_71

    .line 498
    :cond_94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_80

    .line 504
    :cond_b0
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] active_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] candidate_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 509
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanel;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanel;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/NotificationPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/NotificationPanel;->mOldItemPosition:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/NotificationPanel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/NotificationPanel;->mOldItemPosition:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanel;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/NotificationPanel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanel;)Lcom/android/settings/NotificationPanelDragShadowBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/settings/NotificationPanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/NotificationPanel;Lcom/android/settings/NotificationPanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelDragShadowBuilder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/settings/NotificationPanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/NotificationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/NotificationPanel;->SaveAppslist()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationPanel;->changeNotificationPanel_Swap(Landroid/view/View;I)V

    return-void
.end method

.method private changeNotificationPanel(Landroid/view/View;I)V
    .registers 14
    .parameter "iv"
    .parameter "type"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xa

    .line 331
    const-string v5, "NotificationPanel"

    const-string v6, "changeNotificationPanel"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v3, ""

    .line 333
    .local v3, seletedNotificationText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 335
    .local v0, dropItemPosition:I
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I

    move-result v0

    .line 337
    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v8, :cond_50

    .line 338
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #seletedNotificationText:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 342
    .restart local v3       #seletedNotificationText:Ljava/lang/String;
    :goto_20
    const-string v5, "NotificationPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnDragItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , dropItemPosition : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ne v0, v5, :cond_5d

    .line 345
    const-string v5, "NotificationPanel"

    const-string v6, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_4f
    return-void

    .line 340
    :cond_50
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #seletedNotificationText:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3       #seletedNotificationText:Ljava/lang/String;
    goto :goto_20

    .line 347
    :cond_5d
    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v8, :cond_7f

    if-ge v0, v8, :cond_7f

    .line 348
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/settings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 351
    .local v4, value:[I
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v9

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 387
    :goto_7b
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->updatelist()V

    goto :goto_4f

    .line 352
    .end local v4           #value:[I
    :cond_7f
    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ge v5, v8, :cond_c8

    if-lt v0, v8, :cond_c8

    .line 353
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/settings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 355
    .restart local v4       #value:[I
    aget v5, v4, v10

    if-ne v5, v10, :cond_b0

    .line 356
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 357
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 359
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v9

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7b

    .line 362
    :cond_b0
    const v5, 0x7f090dbb

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/NotificationPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, message:Ljava/lang/String;
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_7b

    .line 365
    .end local v2           #message:Ljava/lang/String;
    .end local v4           #value:[I
    :cond_c8
    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-lt v5, v8, :cond_119

    if-ge v0, v8, :cond_119

    .line 366
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/settings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 368
    .restart local v4       #value:[I
    aget v5, v4, v10

    if-ne v5, v10, :cond_f9

    .line 369
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v6, "notification_panel_empty"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v9

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7b

    .line 375
    :cond_f9
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, iconName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 377
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 378
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7b

    .line 382
    .end local v1           #iconName:Ljava/lang/String;
    .end local v4           #value:[I
    :cond_119
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/android/settings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v4

    .line 385
    .restart local v4       #value:[I
    iget-object v5, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v6, v4, v9

    invoke-virtual {v5, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7b
.end method

.method private changeNotificationPanel_Swap(Landroid/view/View;I)V
    .registers 10
    .parameter "iv"
    .parameter "type"

    .prologue
    const/16 v6, 0xa

    .line 292
    const-string v3, "NotificationPanel"

    const-string v4, "changeNotificationPanel_Swap"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v2, ""

    .line 294
    .local v2, placedQuickPanel:Ljava/lang/String;
    const-string v0, ""

    .line 295
    .local v0, longclickedQuickPanel:Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I

    move-result v1

    .line 297
    .local v1, newItemPostion:I
    const-string v3, "NotificationPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changeNotificationPanel_Swap] mOnDragItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , newItemPostion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v3, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ne v1, v3, :cond_41

    .line 300
    const-string v3, "NotificationPanel"

    const-string v4, "[changeNotificationPanel_Swap] dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_40
    return-void

    .line 302
    :cond_41
    iget v3, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ge v3, v6, :cond_69

    if-ge v1, v6, :cond_69

    .line 303
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #longclickedQuickPanel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 304
    .restart local v0       #longclickedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #placedQuickPanel:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 306
    .restart local v2       #placedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_65
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->updatelist()V

    goto :goto_40

    .line 308
    :cond_69
    iget v3, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-ge v3, v6, :cond_92

    if-lt v1, v6, :cond_92

    .line 309
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #longclickedQuickPanel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 310
    .restart local v0       #longclickedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #placedQuickPanel:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 312
    .restart local v2       #placedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 314
    :cond_92
    iget v3, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    if-lt v3, v6, :cond_bb

    if-ge v1, v6, :cond_bb

    .line 315
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #longclickedQuickPanel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 316
    .restart local v0       #longclickedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #placedQuickPanel:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 318
    .restart local v2       #placedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_65

    .line 321
    :cond_bb
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #longclickedQuickPanel:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 322
    .restart local v0       #longclickedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #placedQuickPanel:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 324
    .restart local v2       #placedQuickPanel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v4, v4, -0xa

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v3, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0xa

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_65
.end method

.method private getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .registers 11
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mActiveNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 391
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 393
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p2, :cond_1a

    .line 394
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 395
    const/4 v2, 0x1

    .line 396
    move v0, v1

    .line 401
    :cond_1a
    if-ge p3, v0, :cond_25

    .line 402
    aput p3, v3, v6

    .line 406
    :goto_1e
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 407
    return-object v3

    .line 393
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 404
    :cond_25
    aput v0, v3, v6

    goto :goto_1e
.end method

.method private getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .registers 11
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mCandidateNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 411
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 413
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p2, :cond_1a

    .line 414
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 415
    const/4 v2, 0x1

    .line 416
    move v0, v1

    .line 421
    :cond_1a
    add-int/lit8 v4, p3, -0xa

    if-ge v4, v0, :cond_29

    .line 422
    add-int/lit8 v4, p3, -0xa

    aput v4, v3, v6

    .line 426
    :goto_22
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 427
    return-object v3

    .line 413
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 424
    :cond_29
    aput v0, v3, v6

    goto :goto_22
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    const-string v1, "NotificationPanel"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v15, 0x0

    .line 515
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 516
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 517
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/NotificationPanelDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 520
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 523
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3c

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_3c

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_3c

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_45

    .line 524
    :cond_3c
    const-string v1, "NotificationPanel"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    .line 569
    :goto_44
    return v1

    .line 528
    :cond_45
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 530
    :try_start_4a
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 531
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 532
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 534
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 535
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 538
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 539
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 540
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 542
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 544
    if-eqz v9, :cond_f3

    .line 545
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/settings/NotificationPanelDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/NotificationPanelDragShadowBuilder;->draw()V

    .line 548
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 549
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 550
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 553
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 554
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 555
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 560
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_e5} :catch_e8

    move-result v1

    goto/16 :goto_44

    .line 564
    :catch_e8
    move-exception v1

    .line 565
    const-string v2, "NotificationPanel"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_f3
    move v1, v15

    goto/16 :goto_44
.end method


# virtual methods
.method public MakeConvertPanelName()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Empty"

    const-string v2, "notification_panel_empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_empty"

    const-string v2, "Empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v1, 0x7f04008f

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationPanel;->setContentView(I)V

    .line 108
    const v1, 0x7f0b0173

    invoke-virtual {p0, v1}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_3d

    .line 110
    .local v0, setcheck:Z
    :goto_22
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->MakeConvertPanelName()V

    .line 115
    invoke-direct {p0}, Lcom/android/settings/NotificationPanel;->LoadAppslist()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->updatelist()V

    .line 117
    return-void

    .end local v0           #setcheck:Z
    :cond_3d
    move v0, v2

    .line 109
    goto :goto_22
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 278
    return-void
.end method

.method public selectedQuickpanelName(I)Ljava/lang/String;
    .registers 5
    .parameter "panelId"

    .prologue
    .line 574
    const-string v0, ""

    .line 576
    .local v0, panelName:Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_f

    .line 577
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #panelName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 581
    .restart local v0       #panelName:Ljava/lang/String;
    :goto_e
    return-object v0

    .line 579
    :cond_f
    iget-object v1, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0xa

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #panelName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #panelName:Ljava/lang/String;
    goto :goto_e
.end method

.method public updatelist()V
    .registers 13

    .prologue
    .line 156
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 157
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    .line 158
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_21f

    .line 161
    const/4 v2, 0x0

    .local v2, line:I
    :goto_24
    const/4 v8, 0x4

    if-ge v2, v8, :cond_33f

    .line 162
    if-nez v2, :cond_df

    .line 163
    const v8, 0x7f0b0151

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 164
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 179
    :goto_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    const/4 v8, 0x5

    if-ge v0, v8, :cond_21b

    .line 181
    const v8, 0x7f040090

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 182
    .local v6, positionBarLayout:Landroid/view/View;
    const v8, 0x7f0b0179

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 183
    .local v5, positionBar:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPositionBarDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 184
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    const v8, 0x7f040091

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 188
    .local v4, notificationIconLayout:Landroid/view/View;
    const v8, 0x7f0b017b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 189
    .local v3, notificationIcon:Landroid/widget/ImageView;
    const v8, 0x7f0b017c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 191
    if-nez v2, :cond_11b

    .line 192
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 196
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 220
    .end local v7           #tmpID:I
    :cond_c7
    :goto_c7
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 223
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3a

    .line 166
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBar:Landroid/widget/ImageView;
    .end local v6           #positionBarLayout:Landroid/view/View;
    :cond_df
    const/4 v8, 0x1

    if-ne v2, v8, :cond_f4

    .line 167
    const v8, 0x7f0b0175

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 168
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_39

    .line 170
    :cond_f4
    const/4 v8, 0x2

    if-ne v2, v8, :cond_109

    .line 171
    const v8, 0x7f0b0177

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 172
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_39

    .line 175
    :cond_109
    const v8, 0x7f0b0178

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 176
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_39

    .line 198
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #positionBar:Landroid/widget/ImageView;
    .restart local v6       #positionBarLayout:Landroid/view/View;
    :cond_11b
    const/4 v8, 0x1

    if-ne v2, v8, :cond_174

    .line 199
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 201
    .restart local v7       #tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 203
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c7

    .line 205
    .end local v7           #tmpID:I
    :cond_174
    const/4 v8, 0x2

    if-ne v2, v8, :cond_1c5

    .line 206
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 208
    .restart local v7       #tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 210
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c7

    .line 213
    .end local v7           #tmpID:I
    :cond_1c5
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 215
    .restart local v7       #tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 217
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c7

    .line 161
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBar:Landroid/widget/ImageView;
    .end local v6           #positionBarLayout:Landroid/view/View;
    .end local v7           #tmpID:I
    :cond_21b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    .line 228
    .end local v0           #i:I
    .end local v2           #line:I
    :cond_21f
    const/4 v2, 0x0

    .restart local v2       #line:I
    :goto_220
    const/4 v8, 0x2

    if-ge v2, v8, :cond_33f

    .line 229
    if-nez v2, :cond_2dc

    .line 230
    const v8, 0x7f0b0151

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 231
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 238
    :goto_235
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_236
    const/16 v8, 0xa

    if-ge v0, v8, :cond_33b

    .line 240
    const v8, 0x7f040090

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 241
    .restart local v6       #positionBarLayout:Landroid/view/View;
    const v8, 0x7f0b0179

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 242
    .restart local v5       #positionBar:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPositionBarDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 243
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    const v8, 0x7f040091

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 247
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    const v8, 0x7f0b017b

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 248
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    const v8, 0x7f0b017c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 250
    if-nez v2, :cond_2ee

    .line 251
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2c4

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c4

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 253
    .restart local v7       #tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 255
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 265
    .end local v7           #tmpID:I
    :cond_2c4
    :goto_2c4
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 266
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mPanelDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 268
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_236

    .line 234
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBar:Landroid/widget/ImageView;
    .end local v6           #positionBarLayout:Landroid/view/View;
    :cond_2dc
    const v8, 0x7f0b0175

    invoke-virtual {p0, v8}, Lcom/android/settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 235
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_235

    .line 258
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #positionBar:Landroid/widget/ImageView;
    .restart local v6       #positionBarLayout:Landroid/view/View;
    :cond_2ee
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2c4

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "notification_panel_empty"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2c4

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "drawable"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 260
    .restart local v7       #tmpID:I
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "string"

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 262
    iget-object v8, p0, Lcom/android/settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c4

    .line 228
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #positionBar:Landroid/widget/ImageView;
    .end local v6           #positionBarLayout:Landroid/view/View;
    .end local v7           #tmpID:I
    :cond_33b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_220

    .line 273
    .end local v0           #i:I
    :cond_33f
    return-void
.end method
