.class public Lcom/wssyncmldm/ui/XUIFotaBlockActivity;
.super Landroid/app/Activity;
.source "XUIFotaBlockActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XCommonInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field private static m_BlockDialogActivity:Landroid/app/Activity;

.field private static m_nBlockDialogId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_nBlockDialogId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static xuiFotaBlockDlgRemove(I)V
    .registers 3
    .parameter "arg"

    .prologue
    .line 272
    :try_start_0
    sget-object v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_BlockDialogActivity:Landroid/app/Activity;

    if-eqz v1, :cond_11

    .line 274
    sget-object v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_BlockDialogActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->removeDialog(I)V

    .line 275
    const/4 v1, 0x0

    sput v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_nBlockDialogId:I

    .line 276
    const-string v1, "DialogActvity Remove and reset mDialogId"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 283
    :cond_11
    :goto_11
    return-void

    .line 279
    :catch_12
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    sput-object p0, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_BlockDialogActivity:Landroid/app/Activity;

    .line 207
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, sid:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_nBlockDialogId:I

    .line 209
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v4, 0x7f070024

    const v8, 0x7f07002d

    const v7, 0x7f070080

    const v6, 0x108009b

    const v5, 0x1010355

    .line 34
    const-string v1, ""

    .line 35
    .local v1, szMessage:Ljava/lang/String;
    packed-switch p1, :pswitch_data_12c

    .line 198
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_18
    return-object v0

    .line 44
    :pswitch_19
    const v2, 0x7f0700a3

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$3;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$2;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$1;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_18

    .line 87
    :pswitch_5e
    const v2, 0x7f07009f

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$7;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$6;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$5;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    .line 120
    :pswitch_9b
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    const/16 v3, 0xdc

    if-eq v2, v3, :cond_ab

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_bc

    .line 122
    :cond_ab
    const-string v2, "450"

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOResultCode(Ljava/lang/String;)V

    .line 123
    const/16 v2, 0xf0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 124
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    :cond_bc
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700a5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$10;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$8;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_18

    .line 159
    :pswitch_f5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, prgDialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 161
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 162
    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 163
    const v2, 0x7f0700a4

    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 164
    new-instance v2, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$11;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$11;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 173
    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$12;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 182
    new-instance v2, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$13;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity$13;-><init>(Lcom/wssyncmldm/ui/XUIFotaBlockActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_18

    .line 35
    nop

    :pswitch_data_12c
    .packed-switch 0x191
        :pswitch_19
        :pswitch_5e
        :pswitch_9b
        :pswitch_f5
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 215
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 217
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 223
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 227
    :try_start_5
    sget v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_nBlockDialogId:I

    if-lez v1, :cond_e

    .line 229
    sget v1, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->m_nBlockDialogId:I

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->xuiFotaBlockDlgShow(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_12

    .line 237
    :cond_e
    :goto_e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    return-void

    .line 232
    :catch_12
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public xuiFotaBlockDlgShow(I)Z
    .registers 5
    .parameter "id"

    .prologue
    const/16 v2, 0x194

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 243
    packed-switch p1, :pswitch_data_40

    .line 265
    :goto_1b
    const/4 v0, 0x1

    return v0

    .line 246
    :pswitch_1d
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->removeDialog(I)V

    .line 247
    const/16 v0, 0x191

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->showDialog(I)V

    goto :goto_1b

    .line 250
    :pswitch_28
    const/16 v0, 0x192

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->showDialog(I)V

    goto :goto_1b

    .line 253
    :pswitch_2e
    const/16 v0, 0x193

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->showDialog(I)V

    goto :goto_1b

    .line 256
    :pswitch_34
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->showDialog(I)V

    goto :goto_1b

    .line 259
    :pswitch_38
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->removeDialog(I)V

    .line 260
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaBlockActivity;->finish()V

    goto :goto_1b

    .line 243
    nop

    :pswitch_data_40
    .packed-switch 0x191
        :pswitch_1d
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method
