.class Lcom/wssyncmldm/ui/XUIDownloadProgress$2;
.super Ljava/lang/Object;
.source "XUIDownloadProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIDownloadProgress;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIDownloadProgress;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress$2;->this$0:Lcom/wssyncmldm/ui/XUIDownloadProgress;

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
    .line 111
    const/16 v0, 0x52

    if-ne p2, v0, :cond_6

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
