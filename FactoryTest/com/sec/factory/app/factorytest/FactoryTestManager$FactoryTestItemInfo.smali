.class public Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;
.super Ljava/lang/Object;
.source "FactoryTestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryTestItemInfo"
.end annotation


# instance fields
.field private mAutoTest:Z

.field private mClickable:Z

.field private mID:I

.field private mNVKey:B

.field private mName:Ljava/lang/String;

.field private mParentID:I

.field private mResult:B


# direct methods
.method public constructor <init>(ILjava/lang/String;BBZZI)V
    .registers 12
    .parameter "id"
    .parameter "name"
    .parameter "nv"
    .parameter "result"
    .parameter "auto"
    .parameter "clickable"
    .parameter "parentID"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I

    .line 368
    iput-object p2, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;

    .line 369
    iput-byte p3, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B

    .line 370
    iput-byte p4, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B

    .line 371
    iput-boolean p5, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mAutoTest:Z

    .line 372
    iput-boolean p6, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mClickable:Z

    .line 373
    iput p7, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I

    .line 374
    const-string v0, "FactoryTestManager"

    const-string v1, "FactoryTestItemInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mParentID:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-byte v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B

    return v0
.end method

.method static synthetic access$102(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    iput-byte p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mResult:B

    return p1
.end method

.method static synthetic access$200(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mID:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-byte v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mNVKey:B

    return v0
.end method

.method static synthetic access$400(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mAutoTest:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestManager$FactoryTestItemInfo;->mClickable:Z

    return v0
.end method
