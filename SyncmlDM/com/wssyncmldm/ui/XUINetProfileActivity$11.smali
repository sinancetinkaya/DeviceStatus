.class Lcom/wssyncmldm/ui/XUINetProfileActivity$11;
.super Ljava/lang/Object;
.source "XUINetProfileActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUINetProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$11;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "tabId"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, iSelectTap:I
    const-string v1, "tab1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    .line 343
    const/4 v0, 0x0

    .line 354
    :goto_a
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$202(I)I

    .line 355
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$11;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    #calls: Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCurrentTabSet(I)V
    invoke-static {v1, v0}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$300(Lcom/wssyncmldm/ui/XUINetProfileActivity;I)V

    .line 356
    return-void

    .line 345
    :cond_13
    const-string v1, "tab2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 347
    const/4 v0, 0x1

    goto :goto_a

    .line 351
    :cond_1d
    const/4 v0, 0x2

    goto :goto_a
.end method
