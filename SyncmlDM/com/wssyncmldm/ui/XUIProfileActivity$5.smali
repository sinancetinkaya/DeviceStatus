.class Lcom/wssyncmldm/ui/XUIProfileActivity$5;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCurrentTabSet(I)V
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
    .line 140
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$5;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v0}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$100()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->UserName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 148
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 152
    return-void
.end method
