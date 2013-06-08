.class Lcom/sec/factory/modules/check/CheckModuleTouchScreen$1;
.super Landroid/os/Handler;
.source "CheckModuleTouchScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/modules/check/CheckModuleTouchScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/modules/check/CheckModuleTouchScreen;


# direct methods
.method constructor <init>(Lcom/sec/factory/modules/check/CheckModuleTouchScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen$1;->this$0:Lcom/sec/factory/modules/check/CheckModuleTouchScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/factory/modules/check/CheckModuleTouchScreen$1;->this$0:Lcom/sec/factory/modules/check/CheckModuleTouchScreen;

    #calls: Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->startTest()V
    invoke-static {v0}, Lcom/sec/factory/modules/check/CheckModuleTouchScreen;->access$000(Lcom/sec/factory/modules/check/CheckModuleTouchScreen;)V

    .line 29
    return-void
.end method
