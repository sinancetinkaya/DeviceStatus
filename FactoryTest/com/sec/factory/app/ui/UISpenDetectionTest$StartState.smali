.class Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;
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
    name = "StartState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detected()V
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "StartState detected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public released()V
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "StartState released"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mTextViewPreRelease:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$100(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$StartState;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->statePreRelase:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$200(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    move-result-object v1

    #setter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mState:Lcom/sec/factory/app/ui/UISpenDetectionTest$State;
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$002(Lcom/sec/factory/app/ui/UISpenDetectionTest;Lcom/sec/factory/app/ui/UISpenDetectionTest$State;)Lcom/sec/factory/app/ui/UISpenDetectionTest$State;

    .line 232
    return-void
.end method
