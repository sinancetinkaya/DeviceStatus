.class Lcom/sec/factory/app/ui/UITspReferenceMode$2;
.super Ljava/lang/Object;
.source "UITspReferenceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UITspReferenceMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UITspReferenceMode;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$2;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspReferenceMode$2;->this$0:Lcom/sec/factory/app/ui/UITspReferenceMode;

    #calls: Lcom/sec/factory/app/ui/UITspReferenceMode;->startTspSelfTest()V
    invoke-static {v0}, Lcom/sec/factory/app/ui/UITspReferenceMode;->access$500(Lcom/sec/factory/app/ui/UITspReferenceMode;)V

    .line 148
    return-void
.end method
