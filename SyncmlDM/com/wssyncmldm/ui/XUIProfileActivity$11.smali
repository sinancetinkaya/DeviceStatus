.class Lcom/wssyncmldm/ui/XUIProfileActivity$11;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIProfileActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$11;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 236
    return-void
.end method
