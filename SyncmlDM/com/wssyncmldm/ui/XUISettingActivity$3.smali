.class Lcom/wssyncmldm/ui/XUISettingActivity$3;
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
    .line 82
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUISettingActivity$3;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$3;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #setter for: Lcom/wssyncmldm/ui/XUISettingActivity;->m_nSelectedProfileIndex:I
    invoke-static {v0, p2}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$302(Lcom/wssyncmldm/ui/XUISettingActivity;I)I

    .line 86
    return-void
.end method
