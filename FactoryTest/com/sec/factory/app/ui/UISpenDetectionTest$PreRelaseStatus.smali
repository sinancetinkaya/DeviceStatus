.class Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;
.super Ljava/lang/Object;
.source "UISpenDetectionTest.java"

# interfaces
.implements Lcom/sec/factory/app/ui/UISpenDetectionTest$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UISpenDetectionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreRelaseStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "PreRelaseStatus detected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorking:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$300(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewWorkingPass:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$400(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$500(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 244
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$500(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/sec/factory/modules/ModuleDevice;->startVibrate(J)V

    .line 245
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->stateWorking:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$600(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    move-result-object v1

    #setter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$002(Lcom/sec/factory/app/ui/UISpenDetectionTest;Lcom/sec/factory/app/ui/UISpenDetectionTest$State;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 246
    return-void
.end method

.method public released()V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$PreRelaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "PreRelaseStatus released"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
