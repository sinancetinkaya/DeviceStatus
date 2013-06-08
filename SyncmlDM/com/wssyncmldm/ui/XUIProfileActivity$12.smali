.class Lcom/wssyncmldm/ui/XUIProfileActivity$12;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIProfileActivity;->DrawTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUIProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "tabId"

    .prologue
    .line 380
    const-string v0, "tab1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$102(I)I

    .line 393
    :goto_c
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$12;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$100()I

    move-result v1

    #calls: Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCurrentTabSet(I)V
    invoke-static {v0, v1}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$500(Lcom/wssyncmldm/ui/XUIProfileActivity;I)V

    .line 394
    return-void

    .line 384
    :cond_16
    const-string v0, "tab2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    .line 386
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$102(I)I

    goto :goto_c

    .line 390
    :cond_23
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$102(I)I

    goto :goto_c
.end method
