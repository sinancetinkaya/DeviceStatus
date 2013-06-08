.class Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$2;
.super Ljava/lang/Object;
.source "XUIStorageNotifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->DisplaySelectSdcard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 92
    const/16 v0, 0x113

    invoke-static {v0, v1, v1}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 94
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->finish()V

    .line 95
    return-void
.end method
