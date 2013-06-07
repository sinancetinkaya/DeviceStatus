.class Lcom/android/settings/personalvibration/PersonalVibration$1$1;
.super Ljava/lang/Object;
.source "PersonalVibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalvibration/PersonalVibration$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/personalvibration/PersonalVibration$1;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/PersonalVibration$1;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/personalvibration/PersonalVibration$1$1;->this$1:Lcom/android/settings/personalvibration/PersonalVibration$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration$1$1;->this$1:Lcom/android/settings/personalvibration/PersonalVibration$1;

    iget-object v0, v0, Lcom/android/settings/personalvibration/PersonalVibration$1;->this$0:Lcom/android/settings/personalvibration/PersonalVibration;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/PersonalVibration;->finish()V

    .line 347
    return-void
.end method
