.class Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
.super Landroid/os/Handler;
.source "PersonalVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/PersonalVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/PersonalVibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    .line 225
    :goto_9
    return-void

    .line 196
    :pswitch_a
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 111"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_9

    .line 206
    :pswitch_35
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ddd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 221
    :pswitch_88
    const-string v0, "PersonalVibration"

    const-string v1, "handleMessage : 112"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_9

    .line 193
    :pswitch_data_98
    .packed-switch 0x6f
        :pswitch_a
        :pswitch_35
        :pswitch_88
    .end packed-switch
.end method
