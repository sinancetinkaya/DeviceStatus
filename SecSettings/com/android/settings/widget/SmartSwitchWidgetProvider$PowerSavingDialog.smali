.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
.super Landroid/app/AlertDialog;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PowerSavingDialog"
.end annotation


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSaving:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private iPowerSaving:I

.field private mBackgroundColor:Landroid/widget/CheckedTextView;

.field private mContext:Landroid/content/Context;

.field private mCpuPowerSaving:Landroid/widget/CheckedTextView;

.field private mDisplayPowerSaving:Landroid/widget/CheckedTextView;

.field private mOffHapticFeedback:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 620
    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    .line 621
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 622
    iput-object p2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    .line 624
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 626
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400ad

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 628
    .local v1, layout:Landroid/view/View;
    const v2, 0x7f0b01e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    .line 629
    const v2, 0x7f0b01e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    .line 630
    const v2, 0x7f0b01e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    .line 631
    const v2, 0x7f0b01e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    .line 633
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    .line 639
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_cpu_clock"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    .line 640
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_display"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    .line 641
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_background_colour"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    .line 642
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_haptic_feedback"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    .line 644
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    if-eqz v2, :cond_d1

    move v2, v3

    :goto_9c
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 645
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    if-eqz v2, :cond_d3

    move v2, v3

    :goto_a6
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 646
    iget-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    if-eqz v2, :cond_d5

    move v2, v3

    :goto_b0
    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 647
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    if-eqz v5, :cond_d7

    :goto_b9
    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 654
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setView(Landroid/view/View;)V

    .line 655
    const v2, 0x7f09098d

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setTitle(I)V

    .line 656
    const/4 v2, -0x3

    const v3, 0x104000a

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 657
    return-void

    :cond_d1
    move v2, v4

    .line 644
    goto :goto_9c

    :cond_d3
    move v2, v4

    .line 645
    goto :goto_a6

    :cond_d5
    move v2, v4

    .line 646
    goto :goto_b0

    :cond_d7
    move v3, v4

    .line 647
    goto :goto_b9
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 661
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_switch"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 662
    .local v4, powersavingState:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_cpu_clock"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 663
    .local v1, cpu:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_display"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 664
    .local v2, display:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_background_colour"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 665
    .local v0, back:I
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "psm_haptic_feedback"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 668
    .local v3, haptic:I
    const-string v6, "SmartSwitchWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cpu : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", display : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", back : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", haptic : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-nez v1, :cond_9e

    if-nez v2, :cond_9e

    move v5, v7

    .line 673
    .local v5, retVal:Z
    :goto_83
    iget-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 674
    if-eqz v5, :cond_a0

    if-nez v3, :cond_a0

    move v5, v7

    .line 677
    :cond_98
    :goto_98
    if-eqz v5, :cond_a2

    if-nez v0, :cond_a2

    move v5, v7

    .line 680
    :goto_9d
    return v5

    .end local v5           #retVal:Z
    :cond_9e
    move v5, v8

    .line 671
    goto :goto_83

    .restart local v5       #retVal:Z
    :cond_a0
    move v5, v8

    .line 674
    goto :goto_98

    :cond_a2
    move v5, v8

    .line 677
    goto :goto_9d
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 698
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 699
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "psm_cpu_clock"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c5

    move v2, v3

    :goto_13
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    const-string v5, "psm_display"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c8

    move v2, v3

    :goto_21
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    const-string v5, "psm_background_colour"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_cb

    move v2, v3

    :goto_2f
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 702
    const-string v5, "psm_haptic_feedback"

    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_ce

    move v2, v3

    :goto_3d
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->isAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 705
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f090ccf

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 712
    :goto_5d
    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_switch"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iCpuPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_cpu_clock"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iDisplayPowerSaving:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_display"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iBackgroundColor:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_background_colour"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_ad

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->iOffHapticFeedback:I

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "psm_haptic_feedback"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_c4

    .line 717
    :cond_ad
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "changed"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 721
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c4
    return-void

    :cond_c5
    move v2, v4

    .line 699
    goto/16 :goto_13

    :cond_c8
    move v2, v4

    .line 700
    goto/16 :goto_21

    :cond_cb
    move v2, v4

    .line 701
    goto/16 :goto_2f

    :cond_ce
    move v2, v4

    .line 702
    goto/16 :goto_3d

    .line 709
    :cond_d1
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 686
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 687
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mCpuPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_18

    :goto_14
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 695
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v1

    .line 687
    goto :goto_14

    .line 688
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 689
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mDisplayPowerSaving:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_30

    :goto_2c
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_17

    :cond_30
    move v0, v1

    goto :goto_2c

    .line 690
    :cond_32
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 691
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mBackgroundColor:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_48

    :goto_44
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_17

    :cond_48
    move v0, v1

    goto :goto_44

    .line 692
    :cond_4a
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 693
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;->mOffHapticFeedback:Landroid/widget/CheckedTextView;

    invoke-virtual {v3}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_60

    :goto_5c
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_17

    :cond_60
    move v0, v1

    goto :goto_5c
.end method
