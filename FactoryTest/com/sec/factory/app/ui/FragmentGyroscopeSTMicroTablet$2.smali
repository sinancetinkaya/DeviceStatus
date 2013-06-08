.class Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;
.super Ljava/lang/Object;
.source "FragmentGyroscopeSTMicroTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;->update(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$DataGyroSTMicroTablet;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;->this$0:Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet;

    iput-object p2, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/factory/app/ui/FragmentGyroscopeSTMicroTablet$2;->val$handler:Landroid/os/Handler;

    sget v1, Lcom/sec/factory/app/ui/UIGeomagneticGyro;->WHAT_GYROSCOPE_FAIL:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 156
    return-void
.end method
