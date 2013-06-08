.class Lcom/wssyncmldm/ui/XUIResultActivity$1;
.super Ljava/lang/Object;
.source "XUIResultActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIResultActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIResultActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIResultActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIResultActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIResultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIResultActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIResultActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIResultActivity;->finish()V

    .line 177
    return-void
.end method
