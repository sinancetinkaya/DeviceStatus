.class Lcom/wssyncmldm/ui/XUISettingActivity$5;
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
    .line 169
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUISettingActivity$5;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUISettingActivity$5;->this$0:Lcom/wssyncmldm/ui/XUISettingActivity;

    #calls: Lcom/wssyncmldm/ui/XUISettingActivity;->xuiCallUiDmNetProfile()V
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUISettingActivity;->access$500(Lcom/wssyncmldm/ui/XUISettingActivity;)V

    .line 173
    const/4 v0, 0x0

    return v0
.end method
