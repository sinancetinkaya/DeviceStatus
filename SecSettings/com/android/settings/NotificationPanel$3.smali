.class Lcom/android/settings/NotificationPanel$3;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


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
    .line 630
    iput-object p1, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f02034e

    const/16 v4, 0x3e9

    .line 633
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I
    invoke-static {v3, p1, v4}, Lcom/android/settings/NotificationPanel;->access$600(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)I

    move-result v0

    .line 634
    .local v0, newItemPosition:I
    const-string v2, ""

    .line 637
    .local v2, seletedNotificationText:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_bc

    .line 678
    :pswitch_15
    const/4 v1, 0x1

    .line 681
    .local v1, res:Z
    :goto_16
    return v1

    .line 639
    .end local v1           #res:Z
    :pswitch_17
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-virtual {v3, v0}, Lcom/android/settings/NotificationPanel;->selectedQuickpanelName(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    const-string v3, "notification_panel_empty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 641
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V
    invoke-static {v3, p1, v4}, Lcom/android/settings/NotificationPanel;->access$700(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V

    .line 642
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->SaveAppslist()V
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$800(Lcom/android/settings/NotificationPanel;)V

    .line 647
    :goto_2f
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v6}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 648
    const/4 v1, 0x1

    .line 649
    .restart local v1       #res:Z
    goto :goto_16

    .line 644
    .end local v1           #res:Z
    :cond_36
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->changeNotificationPanel_Swap(Landroid/view/View;I)V
    invoke-static {v3, p1, v4}, Lcom/android/settings/NotificationPanel;->access$900(Lcom/android/settings/NotificationPanel;Landroid/view/View;I)V

    .line 645
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #calls: Lcom/android/settings/NotificationPanel;->SaveAppslist()V
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$800(Lcom/android/settings/NotificationPanel;)V

    goto :goto_2f

    .line 652
    :pswitch_41
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const v4, 0x7f020245

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 653
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v3

    if-eq v0, v3, :cond_75

    .line 654
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v4}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 655
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v3, v0}, Lcom/android/settings/NotificationPanel;->access$1002(Lcom/android/settings/NotificationPanel;I)I

    .line 657
    :cond_75
    const/4 v1, 0x0

    .line 658
    .restart local v1       #res:Z
    goto :goto_16

    .line 661
    .end local v1           #res:Z
    :pswitch_77
    const/4 v1, 0x1

    .line 662
    .restart local v1       #res:Z
    goto :goto_16

    .line 665
    .end local v1           #res:Z
    :pswitch_79
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$100(Lcom/android/settings/NotificationPanel;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 666
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v4}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 667
    :cond_96
    const/4 v1, 0x1

    .line 668
    .restart local v1       #res:Z
    goto/16 :goto_16

    .line 671
    .end local v1           #res:Z
    :pswitch_99
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 672
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #setter for: Lcom/android/settings/NotificationPanel;->mIsOnDragging:Z
    invoke-static {v3, v6}, Lcom/android/settings/NotificationPanel;->access$102(Lcom/android/settings/NotificationPanel;Z)Z

    .line 673
    iget-object v3, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/NotificationPanel;->access$200(Lcom/android/settings/NotificationPanel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/NotificationPanel$3;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mOldItemPosition:I
    invoke-static {v4}, Lcom/android/settings/NotificationPanel;->access$1000(Lcom/android/settings/NotificationPanel;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 674
    const/4 v1, 0x1

    .line 675
    .restart local v1       #res:Z
    goto/16 :goto_16

    .line 637
    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_77
        :pswitch_15
        :pswitch_17
        :pswitch_99
        :pswitch_41
        :pswitch_79
    .end packed-switch
.end method
