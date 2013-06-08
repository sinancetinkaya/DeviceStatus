.class Lcom/wssyncmldm/ui/XUINetProfileActivity$4;
.super Ljava/lang/Object;
.source "XUINetProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCurrentTabSet(I)V
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
    .line 121
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$4;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 124
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v0

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 129
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 133
    return-void
.end method
