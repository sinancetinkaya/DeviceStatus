.class Lcom/sec/factory/app/factorytest/FactoryTestMainInner$2;
.super Ljava/util/TimerTask;
.source "FactoryTestMainInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->startTimerForRestFlag(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMainInner;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMainInner$2;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMainInner;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMainInner;->access$102(Z)Z

    .line 353
    return-void
.end method
