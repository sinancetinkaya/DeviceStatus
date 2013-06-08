.class Lcom/sec/factory/app/ui/UIUSB$2;
.super Landroid/os/Handler;
.source "UIUSB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIUSB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIUSB;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIUSB;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const v4, -0xffff01

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/sec/factory/app/ui/UIUSB;->WHAT_CHECK_LCD_ON:I

    if-ne v0, v1, :cond_4d

    .line 120
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$308(Lcom/sec/factory/app/ui/UIUSB;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4e

    .line 121
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIUSB;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "handleMessage : LCD is not on state during 1 second."

    invoke-static {v0, v1}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$500(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$008(Lcom/sec/factory/app/ui/UIUSB;)I

    .line 127
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #setter for: Lcom/sec/factory/app/ui/UIUSB;->mCount:I
    invoke-static {v0, v2}, Lcom/sec/factory/app/ui/UIUSB;->access$302(Lcom/sec/factory/app/ui/UIUSB;I)I

    .line 149
    :cond_4d
    :goto_4d
    return-void

    .line 129
    :cond_4e
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$600(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModulePower;->isScreenOn()Z

    move-result v0

    if-ne v0, v3, :cond_b9

    .line 130
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$600(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/factory/modules/ModulePower;->doPartialWakeLock(Z)V

    .line 131
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$600(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/factory/modules/ModulePower;->doWakeLock(Z)V

    .line 133
    const-string v0, "NEED_LPA_MODE_SET"

    invoke-static {v0, v3}, Lcom/sec/factory/support/Support$Feature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 134
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$700(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModuleDevice;->setLPAmode(Ljava/lang/String;)V

    .line 136
    :cond_7f
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mModulePower:Lcom/sec/factory/modules/ModulePower;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$600(Lcom/sec/factory/app/ui/UIUSB;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModulePower;->gotosleep()V

    .line 138
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep1Result:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$400(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mTextTAStep2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$500(Lcom/sec/factory/app/ui/UIUSB;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$008(Lcom/sec/factory/app/ui/UIUSB;)I

    .line 143
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #setter for: Lcom/sec/factory/app/ui/UIUSB;->mCount:I
    invoke-static {v0, v2}, Lcom/sec/factory/app/ui/UIUSB;->access$302(Lcom/sec/factory/app/ui/UIUSB;I)I

    goto :goto_4d

    .line 145
    :cond_b9
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIUSB$2;->this$0:Lcom/sec/factory/app/ui/UIUSB;

    #getter for: Lcom/sec/factory/app/ui/UIUSB;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UIUSB;->access$800(Lcom/sec/factory/app/ui/UIUSB;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/sec/factory/app/ui/UIUSB;->WHAT_CHECK_LCD_ON:I

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4d
.end method
