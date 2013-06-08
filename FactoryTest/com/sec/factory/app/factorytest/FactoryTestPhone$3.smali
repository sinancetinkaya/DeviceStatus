.class Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;
.super Ljava/lang/Object;
.source "FactoryTestPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestPhone;->checkResultData([BI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

.field final synthetic val$count:I

.field final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->val$result:[B

    iput p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->val$result:[B

    if-nez v0, :cond_f

    .line 510
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestPhone;

    iget-object v1, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->val$result:[B

    iget v2, p0, Lcom/sec/factory/app/factorytest/FactoryTestPhone$3;->val$count:I

    add-int/lit8 v2, v2, -0x1

    #calls: Lcom/sec/factory/app/factorytest/FactoryTestPhone;->checkResultData([BI)Z
    invoke-static {v0, v1, v2}, Lcom/sec/factory/app/factorytest/FactoryTestPhone;->access$800(Lcom/sec/factory/app/factorytest/FactoryTestPhone;[BI)Z

    .line 512
    :cond_f
    return-void
.end method
