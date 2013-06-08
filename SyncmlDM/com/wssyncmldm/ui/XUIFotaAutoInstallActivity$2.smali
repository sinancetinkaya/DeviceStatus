.class Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$2;
.super Ljava/lang/Object;
.source "XUIFotaAutoInstallActivity.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 7
    .parameter "arg0"
    .parameter "hour"
    .parameter "min"

    .prologue
    .line 155
    invoke-static {p2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$302(I)I

    .line 156
    invoke-static {p3}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$402(I)I

    .line 157
    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$600()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$300()I

    move-result v1

    invoke-static {}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$400()I

    move-result v2

    #calls: Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetAutoinstallDate(II)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->access$500(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method
