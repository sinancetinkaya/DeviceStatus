.class Lcom/sec/factory/aporiented/DummyFtClient$3;
.super Ljava/lang/Object;
.source "DummyFtClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/aporiented/DummyFtClient;->sendBootCompletedAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/aporiented/DummyFtClient;


# direct methods
.method constructor <init>(Lcom/sec/factory/aporiented/DummyFtClient;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sec/factory/aporiented/DummyFtClient$3;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/factory/aporiented/DummyFtClient$3;->this$0:Lcom/sec/factory/aporiented/DummyFtClient;

    #getter for: Lcom/sec/factory/aporiented/DummyFtClient;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/factory/aporiented/DummyFtClient;->access$100(Lcom/sec/factory/aporiented/DummyFtClient;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    return-void
.end method
