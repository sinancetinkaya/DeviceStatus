.class Lcom/sec/factory/app/ui/UIBarcodeEmulator$2;
.super Ljava/lang/Object;
.source "UIBarcodeEmulator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIBarcodeEmulator;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIBarcodeEmulator;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIBarcodeEmulator;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$2;->this$0:Lcom/sec/factory/app/ui/UIBarcodeEmulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBarcodeEmulator$2;->this$0:Lcom/sec/factory/app/ui/UIBarcodeEmulator;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBarcodeEmulator;->finish()V

    .line 104
    return-void
.end method
