.class public Lcom/wssyncmldm/ui/XUIMainActivity;
.super Landroid/preference/PreferenceActivity;
.source "XUIMainActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XDBInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XEventInterface;


# static fields
.field private static final KEY_DM_SETTING:Ljava/lang/String; = "settingdm"

.field private static final KEY_FOTA_RESULT:Ljava/lang/String; = "resultdm"

.field private static final KEY_SOFTWARE_UPDATE:Ljava/lang/String; = "startdm"

.field public static g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

.field public static g_bIsLocalTest:Z

.field private static m_Builder:Landroid/app/AlertDialog$Builder;

.field private static m_ConnectAlertDialog:Landroid/app/AlertDialog;


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_szDeltafileList:[Ljava/lang/String;

.field private m_szFotaLogList:[Ljava/lang/String;

.field private m_szResponseText:Ljava/lang/String;

.field private m_szRootingSettingList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssyncmldm/ui/XUIMainActivity;->g_bIsLocalTest:Z

    .line 68
    sput-object v1, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    .line 69
    sput-object v1, Lcom/wssyncmldm/ui/XUIMainActivity;->m_ConnectAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szResponseText:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szDeltafileList:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Rooting On"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Rooting Off"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szRootingSettingList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIMainActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiCallUiDmSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUIMainActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szResponseText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wssyncmldm/ui/XUIMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szResponseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wssyncmldm/ui/XUIMainActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szDeltafileList:[Ljava/lang/String;

    return-object v0
.end method

.method private xuiCallUiDmSetting()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 197
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_10

    .line 199
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 216
    :goto_f
    return-void

    .line 203
    :cond_10
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsConnected()Z

    move-result v0

    .line 204
    .local v0, Isconnected:Z
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    if-gtz v3, :cond_1d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3a

    .line 206
    :cond_1d
    const/4 v2, 0x0

    .line 207
    .local v2, msg:Ljava/lang/String;
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {p0, v2, v4}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_f

    .line 214
    .end local v2           #msg:Ljava/lang/String;
    :cond_3a
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wssyncmldm/ui/XUISettingActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method private xuiFotaLogList()V
    .registers 22

    .prologue
    .line 563
    const-string v17, "/%s/%s/"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->CACHE_DIR_PATH:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_DIR_PATH:Ljava/lang/String;

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, szCacheFotaPath:Ljava/lang/String;
    const-string v17, "/%s/log/"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->DATA_DIR_PATH:Ljava/lang/String;

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 566
    .local v16, szRecoveryPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 567
    .local v2, CacheFotaFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 568
    .local v4, RecoveryFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 569
    .local v7, cachefotaFiles:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 570
    .local v14, recoveryFiles:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 572
    .local v10, fotaLogIdx:I
    new-instance v2, Ljava/io/File;

    .end local v2           #CacheFotaFile:Ljava/io/File;
    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .restart local v2       #CacheFotaFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_93

    .line 577
    :try_start_3e
    new-instance v17, Lcom/wssyncmldm/ui/XUIMainActivity$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity$11;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 588
    .local v3, CacheFotaFiles:[Ljava/io/File;
    if-eqz v3, :cond_93

    array-length v0, v3

    move/from16 v17, v0

    if-eqz v17, :cond_93

    .line 590
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v7, v0, [Ljava/lang/String;

    .line 592
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5c
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_93

    .line 594
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v3, v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v11

    .line 595
    add-int/lit8 v10, v10, 0x1

    .line 596
    aget-object v17, v3, v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_89} :catch_8c

    .line 592
    add-int/lit8 v11, v11, 0x1

    goto :goto_5c

    .line 600
    .end local v3           #CacheFotaFiles:[Ljava/io/File;
    .end local v11           #i:I
    :catch_8c
    move-exception v9

    .line 602
    .local v9, e:Ljava/lang/Exception;
    const-string v17, "file list error!! return..."

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 696
    .end local v9           #e:Ljava/lang/Exception;
    :goto_92
    return-void

    .line 607
    :cond_93
    new-instance v4, Ljava/io/File;

    .end local v4           #RecoveryFile:Ljava/io/File;
    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v4       #RecoveryFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_f7

    .line 612
    :try_start_a0
    new-instance v17, Lcom/wssyncmldm/ui/XUIMainActivity$12;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity$12;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 628
    .local v5, RecoveryFiles:[Ljava/io/File;
    if-eqz v5, :cond_f7

    array-length v0, v5

    move/from16 v17, v0

    if-eqz v17, :cond_f7

    .line 630
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    .line 632
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_be
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_f7

    .line 634
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v5, v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v11

    .line 635
    add-int/lit8 v10, v10, 0x1

    .line 636
    aget-object v17, v5, v11

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_ed} :catch_f0

    .line 632
    add-int/lit8 v11, v11, 0x1

    goto :goto_be

    .line 640
    .end local v5           #RecoveryFiles:[Ljava/io/File;
    .end local v11           #i:I
    :catch_f0
    move-exception v9

    .line 642
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v17, "file list error!! return..."

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_92

    .line 647
    .end local v9           #e:Ljava/lang/Exception;
    :cond_f7
    if-eqz v10, :cond_107

    if-eqz v7, :cond_100

    array-length v0, v7

    move/from16 v17, v0

    if-nez v17, :cond_131

    :cond_100
    if-eqz v14, :cond_107

    array-length v0, v14

    move/from16 v17, v0

    if-nez v17, :cond_131

    .line 649
    :cond_107
    const-string v17, "Not Found Path or Read Permission Denied"

    invoke-static/range {v17 .. v17}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 651
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 652
    .local v6, alertDlg:Landroid/app/AlertDialog$Builder;
    const-string v17, "Fota Log File Not Found\n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 653
    const-string v17, "OK"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_92

    .line 660
    .end local v6           #alertDlg:Landroid/app/AlertDialog$Builder;
    :cond_131
    const/4 v12, 0x0

    .line 661
    .local v12, index:I
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    .line 663
    if-eqz v7, :cond_15b

    array-length v0, v7

    move/from16 v17, v0

    if-eqz v17, :cond_15b

    .line 665
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_144
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_15b

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-object v18, v7, v11

    aput-object v18, v17, v12

    .line 665
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_144

    .line 669
    .end local v11           #i:I
    :cond_15b
    if-eqz v14, :cond_17a

    array-length v0, v14

    move/from16 v17, v0

    if-eqz v17, :cond_17a

    .line 671
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_163
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_17a

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-object v18, v14, v11

    aput-object v18, v17, v12

    .line 671
    add-int/lit8 v11, v11, 0x1

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_163

    .line 676
    .end local v11           #i:I
    :cond_17a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v8, dlg:Landroid/app/AlertDialog$Builder;
    const-string v17, "FotaLogList\n"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Lcom/wssyncmldm/ui/XUIMainActivity$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity$15;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Copy"

    new-instance v19, Lcom/wssyncmldm/ui/XUIMainActivity$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity$14;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "Cancel"

    new-instance v19, Lcom/wssyncmldm/ui/XUIMainActivity$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity$13;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_92
.end method

.method private xuiInputCommandDialog()V
    .registers 7

    .prologue
    .line 259
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 261
    .local v2, textEntryView:Landroid/view/View;
    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 262
    .local v1, text:Landroid/widget/EditText;
    new-instance v3, Lcom/wssyncmldm/ui/XUIMainActivity$4;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 278
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    .line 279
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f07003f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 280
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    const-string v4, "Input command key string"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07002d

    new-instance v5, Lcom/wssyncmldm/ui/XUIMainActivity$5;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_ConnectAlertDialog:Landroid/app/AlertDialog;

    .line 289
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_ConnectAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/wssyncmldm/ui/XUIMainActivity$6;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 296
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->m_ConnectAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method public static xuiLocalTest(Ljava/lang/String;)V
    .registers 13
    .parameter "szPath"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    .local v3, filesize:I
    const/4 v0, 0x0

    .line 364
    .local v0, ObjIn:Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 365
    .local v4, jnifota:Lcom/fota/JNIFOTA;
    const/4 v5, 0x0

    .line 367
    .local v5, nRet:I
    const-string v6, "Just for local test..."

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 371
    :try_start_b
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_3a

    .line 372
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .local v1, ObjIn:Ljava/io/DataInputStream;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_b9

    move-result v3

    .line 382
    if-eqz v1, :cond_1e

    .line 384
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_30

    :cond_1e
    move-object v0, v1

    .line 393
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    :cond_1f
    :goto_1f
    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmCheckAvailableCacheMemory(I)Z

    move-result v6

    if-nez v6, :cond_61

    .line 395
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbClearCache(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 449
    :goto_2f
    return-void

    .line 387
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_30
    move-exception v2

    .line 389
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    move-object v0, v1

    .line 391
    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_1f

    .line 374
    .end local v2           #e:Ljava/io/IOException;
    :catch_3a
    move-exception v2

    .line 376
    .local v2, e:Ljava/lang/Exception;
    :goto_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_51

    .line 382
    if-eqz v0, :cond_1f

    .line 384
    :try_start_44
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_1f

    .line 387
    :catch_48
    move-exception v2

    .line 389
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1f

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    :catchall_51
    move-exception v6

    .line 382
    :goto_52
    if-eqz v0, :cond_57

    .line 384
    :try_start_54
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 390
    :cond_57
    :goto_57
    throw v6

    .line 387
    :catch_58
    move-exception v2

    .line 389
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_57

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :cond_61
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpInitDeltaArea()Lcom/fota/JNIFOTA;

    move-result-object v4

    .line 400
    if-nez v4, :cond_6d

    .line 402
    const-string v6, "JNI NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_2f

    .line 406
    :cond_6d
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaDownloadMemoryCheck(I)I

    move-result v5

    .line 407
    const/4 v6, -0x1

    if-ne v5, v6, :cond_7b

    .line 409
    const-string v6, "xfotaDownloadMemoryCheck fail"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_2f

    .line 416
    :cond_7b
    const-string v6, ""

    invoke-static {v4, p0, v6}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpSetDeltaPath(Lcom/fota/JNIFOTA;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 438
    if-eqz v5, :cond_a6

    .line 440
    const-string v6, "not success nRet is "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "not success nRet is %d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2f

    .line 445
    :cond_a6
    invoke-static {v4, v10}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbAdpSetFlag(Lcom/fota/JNIFOTA;I)I

    .line 447
    const-string v6, "Phone will be reboot"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 448
    const/4 v6, 0x0

    const/16 v7, 0xd5

    invoke-static {v6, v7}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto/16 :goto_2f

    .line 380
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catchall_b6
    move-exception v6

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_52

    .line 374
    .end local v0           #ObjIn:Ljava/io/DataInputStream;
    .restart local v1       #ObjIn:Ljava/io/DataInputStream;
    :catch_b9
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/DataInputStream;
    .restart local v0       #ObjIn:Ljava/io/DataInputStream;
    goto :goto_3b
.end method

.method private xuiLocalTestDialog()V
    .registers 16

    .prologue
    .line 453
    const/4 v12, 0x6

    new-array v4, v12, [Ljava/lang/String;

    .line 454
    .local v4, deltaPath:[Ljava/lang/String;
    const/4 v12, 0x6

    new-array v2, v12, [[Ljava/lang/String;

    .line 455
    .local v2, deltaFiles:[[Ljava/lang/String;
    const/4 v12, 0x6

    new-array v3, v12, [Ljava/io/File;

    .line 457
    .local v3, deltaLogFile:[Ljava/io/File;
    const/4 v5, 0x0

    .line 459
    .local v5, deltafileListCnt:I
    const/4 v12, 0x0

    const-string v13, "data/data/com.wssyncmldm/"

    aput-object v13, v4, v12

    .line 460
    const/4 v12, 0x1

    const-string v13, "/data/fota/"

    aput-object v13, v4, v12

    .line 461
    sget-object v12, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_24

    sget-object v12, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 462
    :cond_24
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmInitExternalStorageState()V

    .line 463
    :cond_27
    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    .line 464
    const/4 v12, 0x3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    .line 465
    const/4 v12, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/fota/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    .line 466
    const/4 v12, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/fota/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    .line 468
    const/4 v11, 0x0

    .local v11, nDeltaPath:I
    :goto_88
    array-length v12, v4

    if-ge v11, v12, :cond_ea

    .line 470
    new-instance v12, Ljava/io/File;

    aget-object v13, v4, v11

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v3, v11

    .line 472
    aget-object v12, v3, v11

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_e7

    .line 476
    :try_start_9c
    aget-object v12, v3, v11

    new-instance v13, Lcom/wssyncmldm/ui/XUIMainActivity$7;

    invoke-direct {v13, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v12, v13}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 487
    .local v1, datafilelist:[Ljava/io/File;
    if-eqz v1, :cond_e7

    array-length v12, v1

    if-eqz v12, :cond_e7

    .line 489
    array-length v12, v1

    new-array v12, v12, [Ljava/lang/String;

    aput-object v12, v2, v11

    .line 491
    const/4 v8, 0x0

    .local v8, i:I
    :goto_b2
    array-length v12, v1

    if-ge v8, v12, :cond_e7

    .line 493
    aget-object v12, v2, v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v4, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v1, v8

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    .line 494
    add-int/lit8 v5, v5, 0x1

    .line 495
    aget-object v12, v1, v8

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_dd} :catch_e0

    .line 491
    add-int/lit8 v8, v8, 0x1

    goto :goto_b2

    .line 499
    .end local v1           #datafilelist:[Ljava/io/File;
    .end local v8           #i:I
    :catch_e0
    move-exception v7

    .line 501
    .local v7, e:Ljava/lang/Exception;
    const-string v12, "file list error!! return..."

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 559
    .end local v7           #e:Ljava/lang/Exception;
    :goto_e6
    return-void

    .line 468
    :cond_e7
    add-int/lit8 v11, v11, 0x1

    goto :goto_88

    .line 508
    :cond_ea
    if-eqz v5, :cond_f1

    if-eqz v2, :cond_f1

    array-length v12, v2

    if-nez v12, :cond_10e

    .line 510
    :cond_f1
    const-string v12, "Not Found Path or Read Permission Denied"

    invoke-static {v12}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 512
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, alertDlg:Landroid/app/AlertDialog$Builder;
    const-string v12, "Delta File Not Found\n"

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 514
    const-string v12, "OK"

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_e6

    .line 521
    .end local v0           #alertDlg:Landroid/app/AlertDialog$Builder;
    :cond_10e
    const/4 v9, 0x0

    .line 522
    .local v9, index:I
    new-array v12, v5, [Ljava/lang/String;

    iput-object v12, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szDeltafileList:[Ljava/lang/String;

    .line 524
    const/4 v11, 0x0

    :goto_114
    array-length v12, v2

    if-ge v11, v12, :cond_132

    .line 526
    aget-object v12, v2, v11

    if-nez v12, :cond_11e

    .line 524
    :cond_11b
    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    .line 528
    :cond_11e
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_11f
    aget-object v12, v2, v11

    array-length v12, v12

    if-ge v8, v12, :cond_11b

    .line 530
    iget-object v12, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szDeltafileList:[Ljava/lang/String;

    add-int/lit8 v10, v9, 0x1

    .end local v9           #index:I
    .local v10, index:I
    aget-object v13, v2, v11

    aget-object v13, v13, v8

    aput-object v13, v12, v9

    .line 528
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    .end local v10           #index:I
    .restart local v9       #index:I
    goto :goto_11f

    .line 535
    .end local v8           #i:I
    :cond_132
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v6, dlg:Landroid/app/AlertDialog$Builder;
    const-string v12, "Delta File List\n"

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 537
    iget-object v12, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szDeltafileList:[Ljava/lang/String;

    const/4 v13, 0x0

    new-instance v14, Lcom/wssyncmldm/ui/XUIMainActivity$10;

    invoke-direct {v14, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v6, v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const-string v13, "Ok"

    new-instance v14, Lcom/wssyncmldm/ui/XUIMainActivity$9;

    invoke-direct {v14, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const-string v13, "Cancel"

    new-instance v14, Lcom/wssyncmldm/ui/XUIMainActivity$8;

    invoke-direct {v14, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_e6
.end method

.method private xuiRootingDialog()V
    .registers 5

    .prologue
    .line 793
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 794
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const-string v1, "Rooting Setting \n"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 795
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szRootingSettingList:[Ljava/lang/String;

    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetRootingPrefValue()I

    move-result v2

    new-instance v3, Lcom/wssyncmldm/ui/XUIMainActivity$16;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$16;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 802
    const-string v1, "OK"

    new-instance v2, Lcom/wssyncmldm/ui/XUIMainActivity$17;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$17;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 811
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 812
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    iput-object p0, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Context:Landroid/content/Context;

    .line 94
    new-instance v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v4, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_Context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    .line 95
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v3, v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    if-nez v3, :cond_1d

    .line 96
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    new-instance v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v4}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    iput-object v4, v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 98
    :cond_1d
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    iget-object v3, v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    if-nez v3, :cond_2c

    .line 99
    sget-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    new-instance v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    invoke-direct {v4}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;-><init>()V

    iput-object v4, v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    .line 101
    :cond_2c
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmGetProxyData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    sput-object v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_UiNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    .line 103
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->addPreferencesFromResource(I)V

    .line 105
    const-string v3, "startdm"

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 106
    .local v2, SwPref:Landroid/preference/Preference;
    new-instance v3, Lcom/wssyncmldm/ui/XUIMainActivity$1;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    const-string v3, "settingdm"

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 116
    .local v1, SettingPref:Landroid/preference/Preference;
    new-instance v3, Lcom/wssyncmldm/ui/XUIMainActivity$2;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 125
    const-string v3, "resultdm"

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 126
    .local v0, ResultPref:Landroid/preference/Preference;
    new-instance v3, Lcom/wssyncmldm/ui/XUIMainActivity$3;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIMainActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIMainActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->setDefaultKeyMode(I)V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 152
    const-string v0, "Input MasterKey"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 167
    :goto_7
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 162
    :pswitch_c
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiInputCommandDialog()V

    goto :goto_7

    .line 159
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 85
    return-void
.end method

.method protected xuiCallUiDmResult()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 173
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_10

    .line 175
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 192
    :goto_f
    return-void

    .line 179
    :cond_10
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsConnected()Z

    move-result v0

    .line 180
    .local v0, Isconnected:Z
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    if-gtz v3, :cond_1d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3a

    .line 182
    :cond_1d
    const/4 v2, 0x0

    .line 183
    .local v2, szMsg:Ljava/lang/String;
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const v3, 0x7f07002f

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {p0, v2, v4}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_f

    .line 190
    .end local v2           #szMsg:Ljava/lang/String;
    :cond_3a
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/wssyncmldm/ui/XUIResultActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method protected xuiCallUiDmStartDm()V
    .registers 8

    .prologue
    const v6, 0x7f07002f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 222
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 224
    sget-boolean v3, Lcom/wssyncmldm/agent/XDMTask;->g_IsDMInitialized:Z

    if-nez v3, :cond_19

    .line 226
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 255
    :goto_18
    return-void

    .line 231
    :cond_19
    invoke-static {}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpGetIsConnected()Z

    move-result v0

    .line 232
    .local v0, Isconnected:Z
    const/4 v1, 0x0

    .line 233
    .local v1, msg:Ljava/lang/String;
    const v3, 0x7f07003c

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {p0, v6}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    if-gtz v3, :cond_3b

    if-ne v0, v4, :cond_3f

    .line 239
    :cond_3b
    invoke-static {p0, v1, v5}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_18

    .line 243
    :cond_3f
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v2

    .line 244
    .local v2, nStatus:I
    const/16 v3, 0xdc

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x32

    if-ne v2, v3, :cond_58

    .line 246
    :cond_4b
    const-string v3, "XDL_STATE_POSTPONE_TO_UPDATE && XDL_STATE_READY_TO_UPDATE"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 247
    invoke-static {v4}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 248
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    goto :goto_18

    .line 252
    :cond_58
    invoke-virtual {p0, v6}, Lcom/wssyncmldm/ui/XUIMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 253
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 254
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileIndex()I

    move-result v3

    invoke-static {v4, v3}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpUserInitiate(II)V

    goto :goto_18
.end method

.method public xuiFileCopy(Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .parameter "srcFile"
    .parameter "trgFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 701
    .local v2, in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 703
    .local v4, out:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 708
    .local v0, buf:[B
    :goto_e
    :try_start_e
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_59

    .line 710
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_e

    .line 713
    .end local v3           #len:I
    :catch_19
    move-exception v1

    .line 715
    .local v1, e:Ljava/lang/Exception;
    :try_start_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FILE :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FileCopy error!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1a .. :try_end_4e} :catchall_64

    .line 720
    if-eqz v2, :cond_53

    .line 721
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 722
    :cond_53
    if-eqz v4, :cond_58

    .line 723
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 725
    .end local v1           #e:Ljava/lang/Exception;
    :cond_58
    :goto_58
    return-void

    .line 720
    .restart local v3       #len:I
    :cond_59
    if-eqz v2, :cond_5e

    .line 721
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 722
    :cond_5e
    if-eqz v4, :cond_58

    .line 723
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_58

    .line 720
    .end local v3           #len:I
    :catchall_64
    move-exception v5

    if-eqz v2, :cond_6a

    .line 721
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 722
    :cond_6a
    if-eqz v4, :cond_6f

    .line 723
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_6f
    throw v5
.end method

.method public xuiGetFotaLog()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 729
    const-string v5, "/cache/fota/"

    .line 730
    .local v5, szCacheFotaPath:Ljava/lang/String;
    const-string v8, "/data/log/"

    .line 731
    .local v8, szRecoveryPath:Ljava/lang/String;
    const-string v7, "/fota_log/"

    .line 732
    .local v7, szFotaLogFolder:Ljava/lang/String;
    const-string v9, ""

    .line 733
    .local v9, szSdcardFotaPath:Ljava/lang/String;
    const-string v6, ""

    .line 734
    .local v6, szFilename:Ljava/lang/String;
    const/4 v1, 0x0

    .line 736
    .local v1, SdcardFotaFiles:Ljava/io/File;
    sget-object v10, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    sget-object v10, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 737
    :cond_1c
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmInitExternalStorageState()V

    .line 739
    :cond_1f
    sget-boolean v10, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalStorageAvailable:Z

    if-eqz v10, :cond_9d

    .line 741
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->FOTA_EXTERNAL_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 754
    :goto_36
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "szSdcardFotaPath= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 756
    new-instance v1, Ljava/io/File;

    .end local v1           #SdcardFotaFiles:Ljava/io/File;
    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .restart local v1       #SdcardFotaFiles:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5a

    .line 759
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 764
    :cond_5a
    const/4 v4, 0x0

    .local v4, i:I
    move-object v2, v1

    .end local v1           #SdcardFotaFiles:Ljava/io/File;
    .local v2, SdcardFotaFiles:Ljava/io/File;
    :goto_5c
    :try_start_5c
    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_d5

    .line 766
    new-instance v0, Ljava/io/File;

    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 767
    .local v0, FotaLog:Ljava/io/File;
    const-string v6, ""

    .line 769
    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c0

    .line 771
    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, ""

    invoke-virtual {v10, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 777
    :cond_80
    :goto_80
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_96} :catch_e2

    .line 779
    .end local v2           #SdcardFotaFiles:Ljava/io/File;
    .restart local v1       #SdcardFotaFiles:Ljava/io/File;
    :try_start_96
    invoke-virtual {p0, v0, v1}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiFileCopy(Ljava/io/File;Ljava/io/File;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_f1

    .line 764
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    .end local v1           #SdcardFotaFiles:Ljava/io/File;
    .restart local v2       #SdcardFotaFiles:Ljava/io/File;
    goto :goto_5c

    .line 743
    .end local v0           #FotaLog:Ljava/io/File;
    .end local v2           #SdcardFotaFiles:Ljava/io/File;
    .end local v4           #i:I
    .restart local v1       #SdcardFotaFiles:Ljava/io/File;
    :cond_9d
    sget-boolean v10, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->g_bExternalSDStorageAvailable:Z

    if-eqz v10, :cond_b5

    .line 745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->EXTERNAL_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_36

    .line 749
    :cond_b5
    const-string v10, "not available internalSD and externalSD, Copy Failed"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 750
    const-string v10, "not available internalSD and externalSD, Copy Failed"

    invoke-static {p0, v10, v12}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 789
    :goto_bf
    return-void

    .line 773
    .end local v1           #SdcardFotaFiles:Ljava/io/File;
    .restart local v0       #FotaLog:Ljava/io/File;
    .restart local v2       #SdcardFotaFiles:Ljava/io/File;
    .restart local v4       #i:I
    :cond_c0
    :try_start_c0
    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 775
    iget-object v10, p0, Lcom/wssyncmldm/ui/XUIMainActivity;->m_szFotaLogList:[Ljava/lang/String;

    aget-object v10, v10, v4

    const-string v11, ""

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_80

    .line 781
    .end local v0           #FotaLog:Ljava/io/File;
    :cond_d5
    const-string v10, "Copy Successed"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 782
    const-string v10, "Copy Successed"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_e0} :catch_e2

    move-object v1, v2

    .line 788
    .end local v2           #SdcardFotaFiles:Ljava/io/File;
    .restart local v1       #SdcardFotaFiles:Ljava/io/File;
    goto :goto_bf

    .line 784
    .end local v1           #SdcardFotaFiles:Ljava/io/File;
    .restart local v2       #SdcardFotaFiles:Ljava/io/File;
    :catch_e2
    move-exception v3

    move-object v1, v2

    .line 786
    .end local v2           #SdcardFotaFiles:Ljava/io/File;
    .restart local v1       #SdcardFotaFiles:Ljava/io/File;
    .local v3, e:Ljava/io/IOException;
    :goto_e4
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 787
    const-string v10, "Copy Failed"

    invoke-static {p0, v10, v12}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_bf

    .line 784
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #FotaLog:Ljava/io/File;
    :catch_f1
    move-exception v3

    goto :goto_e4
.end method

.method protected xuiSelectTestMenu(Ljava/lang/String;)V
    .registers 6
    .parameter "szInputKey"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key event occured on Dialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 358
    :cond_1e
    :goto_1e
    return-void

    .line 305
    :cond_1f
    const-string v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_41

    .line 307
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbFullRestAll()V

    .line 308
    sget-object v0, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetProfileInfo()Lcom/wssyncmldm/db/file/XDBProfileInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wssyncmldm/db/file/XDBNvm;->NVMSyncMLDMInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 309
    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 310
    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 311
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 312
    const-string v0, "Reset FFS Complete"

    invoke-static {p0, v0, v2}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1e

    .line 314
    :cond_41
    const-string v0, "polling"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 318
    const-string v0, "dev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18b

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpBatteryLifeCheck :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpBatteryLifeCheck()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetOEMName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetOEMName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetFullDeviceID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFullDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetManufacturer :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetModel :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetLanguage :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetFirmwareVersion :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetSoftwareVersion :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetHardwareVersion :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetHardwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmDevAdpGetIMSIFromSIM :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetIMSIFromSIM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmGetTargetSIMState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetTargetSIMState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xdmGetAvailableMemorySize :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetAvailableMemorySize(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 333
    :cond_18b
    const-string v0, "wbxml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_198

    .line 335
    invoke-static {}, Lcom/wssyncmldm/agent/XDMDebug;->xdmSetWbxmlFileLogOnOff()V

    goto/16 :goto_1e

    .line 337
    :cond_198
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a5

    .line 339
    invoke-static {}, Lcom/wssyncmldm/agent/XDMDebug;->xdmSetWbxmlDumpLogOnOff()V

    goto/16 :goto_1e

    .line 341
    :cond_1a5
    const-string v0, "privatelog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b2

    .line 343
    invoke-static {}, Lcom/wssyncmldm/agent/XDMDebug;->xdmSetPrivateLogOnOff()V

    goto/16 :goto_1e

    .line 345
    :cond_1b2
    const-string v0, "localtest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c1

    .line 347
    sput-boolean v3, Lcom/wssyncmldm/ui/XUIMainActivity;->g_bIsLocalTest:Z

    .line 348
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiLocalTestDialog()V

    goto/16 :goto_1e

    .line 350
    :cond_1c1
    const-string v0, "getlog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1ce

    .line 352
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiFotaLogList()V

    goto/16 :goto_1e

    .line 354
    :cond_1ce
    const-string v0, "rooting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    .line 356
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIMainActivity;->xuiRootingDialog()V

    goto/16 :goto_1e
.end method
