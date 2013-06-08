.class Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus$1;
.super Ljava/lang/Object;
.source "UISpenDetectionTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;->released()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus$1;->this$1:Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus$1;->this$1:Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    #getter for: Lcom/sec/factory/app/ui/UISpenDetectionTest;->mModuleDevice:Lcom/sec/factory/modules/ModuleDevice;
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->access$500(Lcom/sec/factory/app/ui/UISpenDetectionTest;)Lcom/sec/factory/modules/ModuleDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/factory/modules/ModuleDevice;->stopVibrate()V

    .line 277
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus$1;->this$1:Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UISpenDetectionTest$WorkingStatus;->this$0:Lcom/sec/factory/app/ui/UISpenDetectionTest;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UISpenDetectionTest;->onFinish()V

    .line 278
    return-void
.end method
