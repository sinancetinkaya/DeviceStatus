.class Lcom/wssyncmldm/ui/XUINetProfileActivity$3;
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
    .line 100
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$3;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1d

    .line 104
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v0

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    .line 107
    :goto_1c
    return-void

    .line 106
    :cond_1d
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v0

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v0, v0, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    const/4 v1, 0x0

    iput v1, v0, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    goto :goto_1c
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 115
    return-void
.end method
