.class Lcom/wssyncmldm/ui/XUIFotaBlockActivity$13;
.super Ljava/lang/Object;
.source "XUIFotaBlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 183
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$13;->this$0:Lcom/wssyncmldm/ui/XUIFotaBlockActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 186
    const/16 v0, 0x52

    if-ne p2, v0, :cond_6

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
