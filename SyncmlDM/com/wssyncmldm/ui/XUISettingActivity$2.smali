.class Lcom/wssyncmldm/ui/XUISettingActivity$2;
.super Ljava/lang/Object;
.source "XUISettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUISettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUISettingActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUISettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #calls: Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateProfile()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$100(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    .line 92
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #calls: Lcom/wssyncmldm/ui/XUISettingActivity;->xuiUpdateNetworkProfile()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$200(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    .line 93
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v1, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #getter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$300(Lcom/wssyncmldm/ui/XUISettingActivity;)I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 94
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProflieList(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #getter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$300(Lcom/wssyncmldm/ui/XUISettingActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 96
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 97
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetConRef()Lcom/wssyncmldm/db/file/XDBInfoConRef;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 99
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #getter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgNet:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$400(Lcom/wssyncmldm/ui/XUISettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 101
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #getter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_DlgNet:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$400(Lcom/wssyncmldm/ui/XUISettingActivity;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 103
    :cond_4c
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$2;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->onStart()V

    .line 104
    return-void
.end method
