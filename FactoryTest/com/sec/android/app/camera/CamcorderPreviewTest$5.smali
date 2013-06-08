.class Lcom/sec/android/app/camera/CamcorderPreviewTest$5;
.super Ljava/lang/Object;
.source "CamcorderPreviewTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderPreviewTest;->dialogErrorPopup(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderPreviewTest;)V
    .registers 2
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1003
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->setResult(ILandroid/content/Intent;)V

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderPreviewTest$5;->this$0:Lcom/sec/android/app/camera/CamcorderPreviewTest;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderPreviewTest;->finish()V

    .line 1006
    return-void
.end method
