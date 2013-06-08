.class Lcom/wssyncmldm/ui/XUIMainActivity$2;
.super Ljava/lang/Object;
.source "XUIMainActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIMainActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity$2;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    #calls: Lcom/wssyncmldm/ui/XUIMainActivity;->xuiCallUiDmSetting()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIMainActivity;->access$000(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method
