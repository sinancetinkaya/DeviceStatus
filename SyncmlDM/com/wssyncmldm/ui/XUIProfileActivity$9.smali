.class Lcom/wssyncmldm/ui/XUIProfileActivity$9;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 282
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$9;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #calls: Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCallUiDmNetProfile()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$200(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    .line 287
    return-void
.end method
