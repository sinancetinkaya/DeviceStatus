.class Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;)V
    .registers 2
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL$1;->this$0:Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 604
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 601
    return-void
.end method
