.class Lcom/sec/factory/modules/ModuleDFT$3;
.super Ljava/lang/Thread;
.source "ModuleDFT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/modules/ModuleDFT;->ActionDFTTouch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/ModuleDFT;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/ModuleDFT;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v4, 0x7d0

    .line 337
    const-wide/16 v0, 0x7d0

    :try_start_4
    invoke-static {v0, v1}, Lcom/sec/factory/modules/ModuleDFT$3;->sleep(J)V

    .line 338
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongEventTime:J
    invoke-static {v0}, Lcom/sec/factory/modules/ModuleDFT;->access$000(Lcom/sec/factory/modules/ModuleDFT;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongEventTime:J
    invoke-static {v2}, Lcom/sec/factory/modules/ModuleDFT;->access$000(Lcom/sec/factory/modules/ModuleDFT;)J

    move-result-wide v2

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongX1:F
    invoke-static {v5}, Lcom/sec/factory/modules/ModuleDFT;->access$100(Lcom/sec/factory/modules/ModuleDFT;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongY1:F
    invoke-static {v6}, Lcom/sec/factory/modules/ModuleDFT;->access$200(Lcom/sec/factory/modules/ModuleDFT;)F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 341
    .local v9, up:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    const/4 v1, 0x0

    #calls: Lcom/sec/factory/modules/ModuleDFT;->injectTouchEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    invoke-static {v0, v9, v1}, Lcom/sec/factory/modules/ModuleDFT;->access$300(Lcom/sec/factory/modules/ModuleDFT;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    .line 342
    iget-object v0, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    iget-object v0, v0, Lcom/sec/factory/modules/ModuleDFT;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ActionDFTTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch Event (Thread) = up = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongEventTime:J
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleDFT;->access$000(Lcom/sec/factory/modules/ModuleDFT;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(+2000) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongX1:F
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleDFT;->access$100(Lcom/sec/factory/modules/ModuleDFT;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/factory/modules/ModuleDFT$3;->this$0:Lcom/sec/factory/modules/ModuleDFT;

    #getter for: Lcom/sec/factory/modules/ModuleDFT;->mTouchLongY1:F
    invoke-static {v3}, Lcom/sec/factory/modules/ModuleDFT;->access$200(Lcom/sec/factory/modules/ModuleDFT;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_6e} :catch_6f

    .line 348
    .end local v9           #up:Landroid/view/MotionEvent;
    :goto_6e
    return-void

    .line 345
    :catch_6f
    move-exception v8

    .line 346
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6e
.end method
