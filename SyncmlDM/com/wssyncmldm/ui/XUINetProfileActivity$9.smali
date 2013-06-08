.class Lcom/wssyncmldm/ui/XUINetProfileActivity$9;
.super Ljava/lang/Object;
.source "XUINetProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUINetProfileActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 244
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$9;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 248
    const-string v0, ""

    .line 249
    .local v0, proxyAddr:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v1

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v0, v1, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    .line 250
    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_42

    .line 252
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v1

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    .line 259
    :goto_1d
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v1

    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$200()I

    move-result v2

    iput v2, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ActivateID:I

    .line 260
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v2

    iget-object v2, v2, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iput-object v2, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    .line 261
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetConRef(Lcom/wssyncmldm/db/file/XDBInfoConRef;)V

    .line 262
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUINetProfileActivity$9;->this$0:Lcom/wssyncmldm/ui/XUINetProfileActivity;

    #calls: Lcom/wssyncmldm/ui/XUINetProfileActivity;->xuiCallUiDmProfile()V
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$100(Lcom/wssyncmldm/ui/XUINetProfileActivity;)V

    .line 263
    return-void

    .line 256
    :cond_42
    invoke-static {}, Lcom/wssyncmldm/ui/XUINetProfileActivity;->access$000()Lcom/wssyncmldm/db/file/XDBNetworkProfileList;

    move-result-object v1

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNetworkProfileList;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/wssyncmldm/db/file/XDBInfoConRef;->bProxyUse:Z

    goto :goto_1d
.end method
