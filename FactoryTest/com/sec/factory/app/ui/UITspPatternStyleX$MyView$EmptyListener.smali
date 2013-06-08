.class public Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;
.super Ljava/lang/Object;
.source "UITspPatternStyleX.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;


# direct methods
.method public constructor <init>(Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;)V
    .registers 2
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;->this$1:Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;->this$1:Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "onTouchEvent"

    const-string v2, "Touch is working !"

    invoke-static {v0, v1, v2}, Lcom/sec/factory/support/FtUtil;->log_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;->this$1:Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    const/4 v1, 0x0

    #setter for: Lcom/sec/factory/app/ui/UITspPatternStyleX;->dialog_showing:Z
    invoke-static {v0, v1}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->access$402(Lcom/sec/factory/app/ui/UITspPatternStyleX;Z)Z

    .line 638
    iget-object v0, p0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView$EmptyListener;->this$1:Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;

    iget-object v0, v0, Lcom/sec/factory/app/ui/UITspPatternStyleX$MyView;->this$0:Lcom/sec/factory/app/ui/UITspPatternStyleX;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UITspPatternStyleX;->finish()V

    .line 639
    return-void
.end method
