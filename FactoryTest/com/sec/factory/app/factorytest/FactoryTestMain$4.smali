.class Lcom/sec/factory/app/factorytest/FactoryTestMain$4;
.super Ljava/lang/Object;
.source "FactoryTestMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$4;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    #getter for: Lcom/sec/factory/app/factorytest/FactoryTestMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->access$2100(Lcom/sec/factory/app/factorytest/FactoryTestMain;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/factory/modules/ModulePower;->instance(Landroid/content/Context;)Lcom/sec/factory/modules/ModulePower;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/factory/modules/ModulePower;->setBrightness(I)V

    .line 313
    return-void
.end method
