.class Lcom/sec/factory/app/factorytest/FactoryTestMain$5;
.super Ljava/lang/Object;
.source "FactoryTestMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;->checkCapacity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$5;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dInterface"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$5;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->finish()V

    .line 825
    const/4 v0, 0x1

    return v0
.end method
