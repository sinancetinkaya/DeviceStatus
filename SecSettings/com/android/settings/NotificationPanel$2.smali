.class Lcom/android/settings/NotificationPanel$2;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 11
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 586
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0}, Lcom/android/settings/NotificationPanel;->access$100(Lcom/android/settings/NotificationPanel;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 587
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0, v8}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 588
    const/4 v6, 0x0

    .line 589
    .local v6, selectedItem:I
    const-string v7, ""

    .line 591
    .local v7, seletedNotificationText:Ljava/lang/String;
    const/4 v6, 0x0

    :goto_13
    const/16 v0, 0x14

    if-ge v6, v0, :cond_27

    .line 592
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 595
    :cond_27
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mOnDragItem:I
    invoke-static {v0, v6}, Lcom/android/settings/NotificationPanel;->access$302(Lcom/android/settings/NotificationPanel;I)I

    .line 597
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    iget-object v1, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOnDragItem:I
    invoke-static {v1}, Lcom/android/settings/NotificationPanel;->access$300(Lcom/android/settings/NotificationPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/NotificationPanel;->selectedQuickpanelName(I)Ljava/lang/String;

    move-result-object v7

    .line 598
    const-string v0, "notification_panel_empty"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 600
    const-string v0, "NotificationPanel"

    const-string v1, "mLongClickListener notification_panel_empty"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v0, v5}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 609
    .end local v6           #selectedItem:I
    .end local v7           #seletedNotificationText:Ljava/lang/String;
    :cond_4c
    :goto_4c
    return v8

    .line 591
    .restart local v6       #selectedItem:I
    .restart local v7       #seletedNotificationText:Ljava/lang/String;
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 604
    :cond_50
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dot : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 605
    .local v2, data:Landroid/content/ClipData;
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    new-instance v1, Lcom/android/settings/NotificationPanelDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/settings/NotificationPanelDragShadowBuilder;-><init>(Landroid/view/View;)V

    #setter for: Lcom/android/settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/settings/NotificationPanelDragShadowBuilder;
    invoke-static {v0, v1}, Lcom/android/settings/NotificationPanel;->access$402(Lcom/android/settings/NotificationPanel;Lcom/android/settings/NotificationPanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelDragShadowBuilder;

    .line 606
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    iget-object v1, p0, Lcom/android/settings/NotificationPanel$2;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/settings/NotificationPanelDragShadowBuilder;
    invoke-static {v1}, Lcom/android/settings/NotificationPanel;->access$400(Lcom/android/settings/NotificationPanel;)Lcom/android/settings/NotificationPanelDragShadowBuilder;

    move-result-object v3

    move-object v1, p1

    move-object v4, p1

    #calls: Lcom/android/settings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z
    invoke-static/range {v0 .. v5}, Lcom/android/settings/NotificationPanel;->access$500(Lcom/android/settings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/NotificationPanelDragShadowBuilder;Ljava/lang/Object;I)Z

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4c
.end method
