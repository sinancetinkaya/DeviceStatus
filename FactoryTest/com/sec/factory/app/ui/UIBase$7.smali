.class Lcom/sec/factory/app/ui/UIBase$7;
.super Ljava/lang/Object;
.source "UIBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/factory/app/ui/UIBase;
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
    .line 426
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIBase$7;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sec/factory/app/ui/UIBase$7;->this$0:Lcom/sec/factory/app/ui/UIBase;

    invoke-virtual {v0}, Lcom/sec/factory/app/ui/UIBase;->finish()V

    .line 431
    return-void
.end method
