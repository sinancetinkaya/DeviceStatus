.class Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;
.super Ljava/lang/Object;
.source "FragmentGyroscopeSTMicroSmartphone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$DataGyroSTMicroSmartphone;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    iput-object p2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    #getter for: Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mGyroSelfTestLayout:Landroid/widget/TableLayout;
    invoke-static {v0}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->access$000(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)Landroid/widget/TableLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    iget-object v1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    #getter for: Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->access$100(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;

    #getter for: Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->mSelfTestResults:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->access$100(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone$2;->val$handler:Landroid/os/Handler;

    #calls: Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->showTestResults([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;->access$200(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroSmartphone;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 193
    return-void
.end method
