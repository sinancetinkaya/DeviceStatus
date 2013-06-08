.class Lcom/sec/factory/app/ui/UIQwertyKey$2;
.super Ljava/lang/Object;
.source "UIQwertyKey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/UIQwertyKey;->PressShiftKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/UIQwertyKey;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/UIQwertyKey;)V
    .registers 2
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/sec/factory/app/ui/UIQwertyKey$2;->this$0:Lcom/sec/factory/app/ui/UIQwertyKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 980
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 981
    return-void
.end method
