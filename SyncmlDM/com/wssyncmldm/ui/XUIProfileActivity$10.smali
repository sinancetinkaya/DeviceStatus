.class Lcom/wssyncmldm/ui/XUIProfileActivity$10;
.super Ljava/lang/Object;
.source "XUIProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/ui/XUIProfileActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 238
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 242
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v6, 0x3

    if-ge v1, v6, :cond_c4

    .line 244
    const-string v3, ""

    .line 245
    .local v3, pAddress:Ljava/lang/String;
    const-string v0, ""

    .line 246
    .local v0, URL:Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, nPort:I
    const-string v4, ""

    .line 248
    .local v4, pProtocol:Ljava/lang/String;
    const/4 v5, 0x0

    .line 249
    .local v5, parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/tp/XTPHttpUtil;->xtpURLParser(Ljava/lang/String;)Lcom/wssyncmldm/db/file/XDBUrlInfo;

    move-result-object v5

    .line 250
    iget-object v0, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pURL:Ljava/lang/String;

    .line 251
    iget-object v3, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pAddress:Ljava/lang/String;

    .line 252
    iget v2, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->nPort:I

    .line 253
    iget-object v4, v5, Lcom/wssyncmldm/db/file/XDBUrlInfo;->pProtocol:Ljava/lang/String;

    .line 254
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iput-object v0, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 255
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iput-object v3, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    .line 256
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iput v2, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    .line 257
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iput-object v4, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    .line 259
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerUrl_Org:Ljava/lang/String;

    .line 260
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerIP_Org:Ljava/lang/String;

    .line 261
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v7

    aget-object v7, v7, v1

    iget v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort:I

    iput v7, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerPort_Org:I

    .line 262
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol:Ljava/lang/String;

    iput-object v7, v6, Lcom/wssyncmldm/db/file/XDBProfileInfo;->Protocol_Org:Ljava/lang/String;

    .line 263
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$302(Z)Z

    .line 264
    invoke-static {v1}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$402(I)I

    .line 266
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileInfo(Lcom/wssyncmldm/db/file/XDBProfileInfo;)Z

    .line 267
    sget-object v6, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #getter for: Lcom/wssyncmldm/ui/XUIProfileActivity;->m_LocalSyncDMInfo_t:[Lcom/wssyncmldm/db/file/XDBProfileInfo;
    invoke-static {v7}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$000(Lcom/wssyncmldm/ui/XUIProfileActivity;)[Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 269
    const/4 v0, 0x0

    .line 270
    const/4 v3, 0x0

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 275
    .end local v0           #URL:Ljava/lang/String;
    .end local v2           #nPort:I
    .end local v3           #pAddress:Ljava/lang/String;
    .end local v4           #pProtocol:Ljava/lang/String;
    .end local v5           #parser:Lcom/wssyncmldm/db/file/XDBUrlInfo;
    :cond_c4
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$302(Z)Z

    .line 276
    sget-object v6, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$100()I

    move-result v7

    iput v7, v6, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->Profileindex:I

    .line 277
    sget-object v6, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v6, v6, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProflieList(Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$100()I

    move-result v6

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 279
    iget-object v6, p0, Lcom/wssyncmldm/ui/XUIProfileActivity$10;->this$0:Lcom/wssyncmldm/ui/XUIProfileActivity;

    #calls: Lcom/wssyncmldm/ui/XUIProfileActivity;->xuiCallUiDmNetProfile()V
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIProfileActivity;->access$200(Lcom/wssyncmldm/ui/XUIProfileActivity;)V

    .line 280
    return-void
.end method
