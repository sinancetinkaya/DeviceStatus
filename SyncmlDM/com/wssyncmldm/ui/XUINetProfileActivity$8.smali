.class Lcom/wssyncmldm/ui/XUINetProfileActivity$8;
.super Ljava/lang/Object;
.source "XUINetProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUINetProfileActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$8;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$8;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    #calls: Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCallUiDmProfile()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$100(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    .line 270
    return-void
.end method
