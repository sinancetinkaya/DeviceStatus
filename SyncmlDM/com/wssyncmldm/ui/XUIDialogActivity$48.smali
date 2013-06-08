.class Lcom/wssyncmldm/ui/XUIDialogActivity$48;
.super Ljava/lang/Object;
.source "XUIDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDialogActivity$48;->this$0:Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1183
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDialogActivity;->access$300()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssyncmldm/eng/core/XDMUicResult;

    add-int/lit8 v1, p2, 0x1

    iput v1, v0, Lcom/wssyncmldm/eng/core/XDMUicResult;->SingleSelected:I

    .line 1184
    return-void
.end method
