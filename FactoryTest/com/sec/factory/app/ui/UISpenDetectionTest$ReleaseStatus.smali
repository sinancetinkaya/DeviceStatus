.class Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;
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
    name = "ReleaseStatus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenDetectionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detected()V
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ReleaseStatus detected"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public released()V
    .registers 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$ReleaseStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "ReleaseStatus released"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method
