.class Lcom/sec/factory/app/factorytest/FactoryTestMain$2$1;
.super Ljava/lang/Object;
.source "FactoryTestMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/factorytest/FactoryTestMain$2;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain$2;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2$1;->this$1:Lcom/sec/factory/app/factorytest/FactoryTestMain$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 171
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->isAutoTest(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 172
    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$2$1;->this$1:Lcom/sec/factory/app/factorytest/FactoryTestMain$2;

    iget-object v1, v1, Lcom/sec/factory/app/factorytest/FactoryTestMain$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestManager;->getItemID(I)I

    move-result v2

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestMain;->launchTest(I)V
    invoke-static {v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$1400(Lcom/sec/factory/app/factorytest/FactoryTestMain;I)V

    .line 170
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1b
    return-void
.end method
