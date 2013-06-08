.class public Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;
.super Ljava/lang/Object;
.source "FactoryTestMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/factorytest/FactoryTestMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/factorytest/FactoryTestMain;)V
    .registers 2
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/sec/factory/app/factorytest/FactoryTestMain$EmptyListener;->this$0:Lcom/sec/factory/app/factorytest/FactoryTestMain;

    invoke-virtual {v0}, Lcom/sec/factory/app/factorytest/FactoryTestMain;->finish()V

    .line 838
    return-void
.end method
