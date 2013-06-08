.class Lcom/wssyncmldm/ui/XUIMainActivity$1;
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
    .line 107
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "preference"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity$1;->this$0:Lcom/wssyncmldm/ui/XUIMainActivity;

    invoke-virtual {v0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiCallUiDmStartDm()V

    .line 111
    const/4 v0, 0x1

    return v0
.end method
