.class Lcom/sec/factory/app/ui/UIProximityLight$2;
.super Ljava/lang/Object;
.source "UIProximityLight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIProximityLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIProximityLight;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIProximityLight;)V
    .registers 2
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, -0x1

    .line 731
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mID:I

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_ID_PROXIMITY:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$700(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    aget-object v3, v3, v4

    iget v3, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mStatus:I

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->TESTITEM_STATUS_OFFSET:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$800(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    if-ne v3, v4, :cond_74

    .line 733
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$900(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_75

    .line 736
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    aget-object v3, v3, v4

    iput-boolean v8, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 737
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    const-string v5, "=== FAIL === (mProximityOffsetValue==null)"

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1000(Lcom/sec/factory/app/ui/UIProximityLight;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "Fail"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1000(Lcom/sec/factory/app/ui/UIProximityLight;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 764
    :cond_74
    :goto_74
    return-void

    .line 744
    :cond_75
    const-string v3, "PROXI_SENSOR_OFFSET"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 745
    const-string v3, "PROXI_SENSOR_OFFSET"

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/sec/factory/support/Support$Kernel;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 747
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<Befor> offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UIProximityLight;->access$900(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1100(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mProximityOffsetValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$900(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 750
    .local v0, offsetValue:I
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mProximityThresholdValue:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1100(Lcom/sec/factory/app/ui/UIProximityLight;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double v1, v3, v5

    .line 751
    .local v1, threshold:D
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<After> offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , threshold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    double-to-int v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    double-to-int v3, v1

    if-le v0, v3, :cond_126

    .line 755
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    aget-object v3, v3, v4

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 756
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    const-string v5, "=== PASS ==="

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_74

    .line 758
    :cond_126
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestList:[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$100(Lcom/sec/factory/app/ui/UIProximityLight;)[Lcom/sec/factory/app/ui/UIProximityLight$TestItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mTestListIndex:I
    invoke-static {v4}, Lcom/sec/factory/app/ui/UIProximityLight;->access$600(Lcom/sec/factory/app/ui/UIProximityLight;)I

    move-result v4

    aget-object v3, v3, v4

    iput-boolean v8, v3, Lcom/sec/factory/app/ui/UIProximityLight$TestItem;->mIsPass:Z

    .line 759
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    iget-object v3, v3, Lcom/sec/factory/app/ui/UIProximityLight;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "mProximityOffsetButton.onClick"

    const-string v5, "=== FAIL ==="

    invoke-static {v3, v4, v5}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1000(Lcom/sec/factory/app/ui/UIProximityLight;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "Fail"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v3, p0, Lcom/sec/factory/app/ui/UIProximityLight$2;->this$0:Lcom/sec/factory/app/ui/UIProximityLight;

    #getter for: Lcom/sec/factory/app/ui/UIProximityLight;->mText_Proximity_Row1_Col3:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/factory/app/ui/UIProximityLight;->access$1000(Lcom/sec/factory/app/ui/UIProximityLight;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_74
.end method
