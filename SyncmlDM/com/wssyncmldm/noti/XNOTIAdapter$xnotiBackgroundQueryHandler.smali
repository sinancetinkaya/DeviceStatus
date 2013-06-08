.class final Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "XNOTIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/noti/XNOTIAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "xnotiBackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/noti/XNOTIAdapter;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/noti/XNOTIAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;->this$0:Lcom/wssyncmldm/noti/XNOTIAdapter;

    .line 237
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_40

    .line 279
    :cond_3
    :goto_3
    return-void

    .line 246
    :pswitch_4
    if-eqz p3, :cond_3a

    .line 248
    const-string v6, "body"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    .local v0, bodyColumn:I
    const-string v6, "date"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, dateColumn:I
    const/4 v3, 0x0

    .line 252
    .local v3, ret:Z
    const/4 v2, 0x0

    .line 253
    .local v2, msgBody:[B
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, szMessageBody:Ljava/lang/String;
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, szDate:Ljava/lang/String;
    invoke-static {v5}, Lcom/wssyncmldm/eng/core/XDMMem;->xdmLibHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 258
    if-eqz v2, :cond_34

    .line 260
    iget-object v6, p0, Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;->this$0:Lcom/wssyncmldm/noti/XNOTIAdapter;

    array-length v7, v2

    invoke-virtual {v6, v2, v7, v4}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReceiveMsg([BILjava/lang/String;)Z

    move-result v3

    .line 261
    if-nez v3, :cond_3

    .line 263
    const-string v6, "xnotiPushAdpReceiveMsg false"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3

    .line 268
    :cond_34
    const-string v6, "messageBody is null"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3

    .line 273
    .end local v0           #bodyColumn:I
    .end local v1           #dateColumn:I
    .end local v2           #msgBody:[B
    .end local v3           #ret:Z
    .end local v4           #szDate:Ljava/lang/String;
    .end local v5           #szMessageBody:Ljava/lang/String;
    :cond_3a
    const-string v6, "onquerycomplete..cursor == null"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_3

    .line 243
    :pswitch_data_40
    .packed-switch 0x2537
        :pswitch_4
    .end packed-switch
.end method
