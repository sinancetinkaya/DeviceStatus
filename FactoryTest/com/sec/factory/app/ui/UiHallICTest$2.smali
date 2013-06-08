.class Lcom/sec/factory/app/ui/UiHallICTest$2;
.super Landroid/os/CountDownTimer;
.source "UiHallICTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UiHallICTest;->HallICTestInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UiHallICTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UiHallICTest;JJ)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/factory/app/ui/UiHallICTest$2;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 253
    const-string v0, "HallICTest"

    const-string v1, "onFinish Countdown Timer End"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest$2;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UiHallICTest;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UiHallICTest;->access$002(Lcom/sec/factory/app/ui/UiHallICTest;Z)Z

    .line 255
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest$2;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    #getter for: Lcom/sec/factory/app/ui/UiHallICTest;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UiHallICTest;->access$100(Lcom/sec/factory/app/ui/UiHallICTest;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 256
    iget-object v0, p0, Lcom/sec/factory/app/ui/UiHallICTest$2;->this$0:Lcom/sec/factory/app/ui/UiHallICTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UiHallICTest;->finish()V

    .line 257
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .parameter "millisUntilFinished"

    .prologue
    .line 250
    return-void
.end method
