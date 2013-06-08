.class Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;
.super Ljava/lang/Object;
.source "XUIFotaBlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->removeDialog(I)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-virtual {v1, v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-virtual {v1}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->finish()V

    .line 60
    return-void
.end method
