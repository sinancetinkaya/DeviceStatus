.class Lcom/wssyncmldm/ui/XUISettingActivity$4;
.super Ljava/lang/Object;
.source "XUISettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUISettingActivity;->onStart()V
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
    .line 146
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUISettingActivity$4;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$4;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget v1, v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I
    invoke-static {v0, v1}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$302(Lcom/wssyncmldm/ui/XUISettingActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$4;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUISettingActivity;->removeDialog(I)V

    .line 152
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$4;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-virtual {v0, v2}, Lcom/wssyncmldm/ui/XUISettingActivity;->showDialog(I)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method
