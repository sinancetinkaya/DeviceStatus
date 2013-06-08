.class Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;
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
    .line 71
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    #calls: Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->xuiCallSdCardAlarm()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->access$000(Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;)V

    .line 75
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 76
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity$4;->this$0:Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIStorageNotifyActivity;->finish()V

    .line 77
    return-void
.end method
