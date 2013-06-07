.class Lcom/sec/bcservice/NotiIntentDialog$1;
.super Ljava/lang/Object;
.source "NotiIntentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/bcservice/NotiIntentDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/bcservice/NotiIntentDialog;


# direct methods
.method constructor <init>(Lcom/sec/bcservice/NotiIntentDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/bcservice/NotiIntentDialog$1;->this$0:Lcom/sec/bcservice/NotiIntentDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 32
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 33
    iget-object v0, p0, Lcom/sec/bcservice/NotiIntentDialog$1;->this$0:Lcom/sec/bcservice/NotiIntentDialog;

    invoke-virtual {v0}, Lcom/sec/bcservice/NotiIntentDialog;->finish()V

    .line 34
    return-void
.end method
