.class Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;
.super Ljava/lang/Object;
.source "XUIFotaBlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 140
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->removeDialog(I)V

    .line 144
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->finish()V

    .line 145
    return-void
.end method
