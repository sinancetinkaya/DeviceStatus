.class Lcom/sec/factory/app/ui/UIBase$4;
.super Ljava/lang/Object;
.source "UIBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBase;->doCopyDumpOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBase;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBase;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$4;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$4;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v1, p0, Lcom/sec/factory/app/ui/UIBase$4;->this$0:Lcom/sec/factory/app/ui/UIBase;

    #getter for: Lcom/sec/factory/app/ui/UIBase;->mFactoryDump:Lcom/sec/factory/app/factorytest/FactoryTestDump;
    invoke-static {v1}, Lcom/sec/factory/app/ui/UIBase;->access$400(Lcom/sec/factory/app/ui/UIBase;)Lcom/sec/factory/app/factorytest/FactoryTestDump;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/factory/app/factorytest/FactoryTestDump;->doCopyDump()Z

    move-result v1

    #setter for: Lcom/sec/factory/app/ui/UIBase;->mCopyDumpResult:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UIBase;->access$302(Lcom/sec/factory/app/ui/UIBase;Z)Z

    .line 359
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$4;->this$0:Lcom/sec/factory/app/ui/UIBase;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UIBase;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "doCopyDumpOperation"

    const-string v2, "Finish CopyDumpThread"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method
