.class Lcom/sec/factory/app/ui/UISensorHub$2;
.super Ljava/lang/Object;
.source "UISensorHub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UISensorHub;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UISensorHub;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UISensorHub;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/factory/app/ui/UISensorHub$2;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/factory/app/ui/UISensorHub$2;->this$0:Lcom/sec/factory/app/ui/UISensorHub;

    #calls: Lcom/sec/factory/app/ui/UISensorHub;->startSensorHubTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UISensorHub;->access$900(Lcom/sec/factory/app/ui/UISensorHub;)V

    .line 152
    return-void
.end method
