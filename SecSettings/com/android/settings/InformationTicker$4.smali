.class Lcom/android/settings/InformationTicker$4;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InformationTicker;->showNotiOfChargesDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InformationTicker;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/settings/InformationTicker;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/android/settings/InformationTicker$4;->this$0:Lcom/android/settings/InformationTicker;

    iput p2, p0, Lcom/android/settings/InformationTicker$4;->val$value:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/settings/InformationTicker$4;->this$0:Lcom/android/settings/InformationTicker;

    iget v1, p0, Lcom/android/settings/InformationTicker$4;->val$value:I

    #calls: Lcom/android/settings/InformationTicker;->saveFBAutoRefreshRate(I)V
    invoke-static {v0, v1}, Lcom/android/settings/InformationTicker;->access$300(Lcom/android/settings/InformationTicker;I)V

    .line 703
    return-void
.end method
