.class Lcom/android/settings/motion/MotionTutorialSettings$5;
.super Ljava/lang/Object;
.source "MotionTutorialSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionTutorialSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings$5;->this$0:Lcom/android/settings/motion/MotionTutorialSettings;

    #calls: Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionTutorialSettings;->access$900(Lcom/android/settings/motion/MotionTutorialSettings;)V

    .line 401
    return-void
.end method
