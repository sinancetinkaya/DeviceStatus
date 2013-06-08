.class Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$3;
.super Ljava/lang/Object;
.source "XUIStorageNotifyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$3;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 83
    const/16 v0, 0x113

    invoke-static {v0, v1, v1}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 85
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$3;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->finish()V

    .line 86
    return-void
.end method
