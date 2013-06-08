.class Lcom/sec/factory/app/ui/UIHardKey$3;
.super Ljava/lang/Object;
.source "UIHardKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIHardKey;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIHardKey;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIHardKey;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIHardKey$3;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIHardKey$3;->this$0:Lcom/sec/factory/app/ui/UIHardKey;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIHardKey;->finish()V

    .line 136
    return-void
.end method
