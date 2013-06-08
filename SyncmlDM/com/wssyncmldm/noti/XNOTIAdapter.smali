.class public Lcom/wssyncmldm/noti/XNOTIAdapter;
.super Lcom/wssyncmldm/agent/XDMAgent;
.source "XNOTIAdapter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final XNOTI_RETRY_COUNT_MAX:I = 0x5

.field private static m_BootStrapUri:Landroid/net/Uri; = null

.field private static m_NotiProcessing:Z = false

.field private static m_PtWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush; = null

.field private static m_PushDataQueue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/wssyncmldm/noti/XNOTIData;",
            ">;"
        }
    .end annotation
.end field

.field private static m_nAuthCount:I = 0x0

.field private static m_nBootStrapId:I = 0x0

.field private static m_szPushDate:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PtWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;

    .line 43
    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_szPushDate:Ljava/lang/String;

    .line 44
    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_BootStrapUri:Landroid/net/Uri;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    .line 46
    sput-boolean v2, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_NotiProcessing:Z

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 59
    return-void
.end method

.method public static xnotiAddPushDataQueue(I[B)V
    .registers 6
    .parameter "type"
    .parameter "pushData"

    .prologue
    const/4 v3, 0x0

    .line 340
    if-nez p1, :cond_9

    .line 342
    const-string v2, "gPushData  Uri is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 356
    :goto_8
    return-void

    .line 346
    :cond_9
    array-length v2, p1

    new-array v0, v2, [B

    .line 347
    .local v0, pushDataCopy:[B
    array-length v2, p1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    new-instance v1, Lcom/wssyncmldm/noti/XNOTIData;

    invoke-direct {v1, p0, v0}, Lcom/wssyncmldm/noti/XNOTIData;-><init>(I[B)V

    .line 351
    .local v1, wssPushData:Lcom/wssyncmldm/noti/XNOTIData;
    sget-object v3, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 353
    :try_start_18
    sget-object v2, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v2, "mPushDataQueue add"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 355
    monitor-exit v3

    goto :goto_8

    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public static xnotiGetBootstrapUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 288
    sget-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_BootStrapUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static xnotiGetCurAuthCnt()I
    .registers 1

    .prologue
    .line 1151
    sget v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_nAuthCount:I

    return v0
.end method

.method public static xnotiGetCurBootStrapId()I
    .registers 1

    .prologue
    .line 1133
    sget v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_nBootStrapId:I

    return v0
.end method

.method public static xnotiGetNotiProcessing()Z
    .registers 1

    .prologue
    .line 329
    sget-boolean v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_NotiProcessing:Z

    return v0
.end method

.method public static xnotiIPPushDataReceive([B)V
    .registers 3
    .parameter "pushData"

    .prologue
    .line 409
    if-nez p0, :cond_8

    .line 411
    const-string v1, "pushData is null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 419
    :goto_7
    return-void

    .line 415
    :cond_8
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetNotiProcessing(Z)V

    .line 416
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIAdapter;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;-><init>()V

    .line 417
    .local v0, pushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;
    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiIpPushAdpReceiveMsg([BI)Z

    goto :goto_7
.end method

.method public static xnotiPushAdapterBootstrap(Lcom/wssyncmldm/noti/XNOTIWapPush;)I
    .registers 2
    .parameter "pWapPush"

    .prologue
    .line 428
    const/16 v0, 0x262

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public static xnotiPushAdpBootstrapInstallApp(Lcom/wssyncmldm/noti/XNOTIWapPush;Landroid/content/Context;)I
    .registers 8
    .parameter "pWapPush"
    .parameter "m_Context"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, eError:I
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 443
    if-eqz p0, :cond_e

    iget-object v3, p0, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    if-nez v3, :cond_f

    .line 467
    :cond_e
    :goto_e
    return v2

    .line 448
    :cond_f
    invoke-static {}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetSyncMode()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v3

    if-eqz v3, :cond_21

    .line 450
    :cond_1b
    const-string v3, "DM is running. don\'t install dm bootstrap!"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e

    .line 453
    :cond_21
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v3, v3, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    iget-object v4, p0, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    invoke-static {v2, v3, v4, p1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReceiveBootStrap(II[BLandroid/content/Context;)I

    move-result v1

    .line 454
    if-nez v1, :cond_38

    .line 458
    const-wide/16 v2, 0x1388

    :try_start_30
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_3a

    .line 464
    :goto_33
    const/16 v2, 0xb

    invoke-static {v2, v5, v5}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    move v2, v1

    .line 467
    goto :goto_e

    .line 460
    :catch_3a
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public static xnotiPushAdpBootstrapInstallCheckSecurity(ILjava/lang/String;[BI[B)Z
    .registers 16
    .parameter "nSecType"
    .parameter "szPinCode"
    .parameter "pBody"
    .parameter "nBodyLen"
    .parameter "pszMAC"

    .prologue
    .line 580
    const/4 v8, 0x0

    .line 581
    .local v8, szSecKey:Ljava/lang/String;
    const/4 v4, 0x0

    .line 582
    .local v4, nSecKeyLen:I
    const/4 v5, 0x0

    .line 583
    .local v5, szDigest:Ljava/lang/String;
    const/4 v6, 0x0

    .line 584
    .local v6, szIMSI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 585
    .local v2, nIMSILen:I
    const/4 v3, 0x0

    .line 587
    .local v3, nPinCodeLen:I
    if-nez p2, :cond_a

    .line 588
    const/4 v9, 0x0

    .line 700
    :goto_9
    return v9

    .line 590
    :cond_a
    packed-switch p0, :pswitch_data_15c

    .line 682
    const-string v9, "no security"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 683
    const/4 v9, 0x1

    goto :goto_9

    .line 594
    :pswitch_14
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetNetPinFormIMSI()Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 597
    const-string v9, "pszSecKey is null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 686
    :cond_23
    :goto_23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 688
    const-string v9, "Digest is Null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 689
    const/4 v9, 0x0

    goto :goto_9

    .line 600
    :cond_30
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 601
    if-nez v4, :cond_3c

    .line 603
    const-string v9, "nSecKeyLen is 0"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 606
    :cond_3c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key Len :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 607
    new-array v0, v4, [B

    .line 608
    .local v0, bkey:[B
    const/4 v1, 0x0

    .local v1, n:I
    :goto_55
    if-ge v1, v4, :cond_64

    .line 610
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 613
    :cond_64
    const/4 v9, 0x4

    array-length v10, v0

    invoke-static {v9, v0, v10, p2}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigestSHA1(I[BI[B)Ljava/lang/String;

    move-result-object v5

    .line 614
    goto :goto_23

    .line 619
    .end local v0           #bkey:[B
    .end local v1           #n:I
    :pswitch_6b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 621
    const-string v9, "pszPinCode is null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 625
    :cond_77
    move-object v8, p1

    .line 626
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 628
    const-string v9, "pszSecKey is null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 631
    :cond_84
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 632
    if-nez v4, :cond_90

    .line 634
    const-string v9, "nSecKeyLen is 0"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_23

    .line 637
    :cond_90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key Len :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 638
    new-array v0, v4, [B

    .line 639
    .restart local v0       #bkey:[B
    const/4 v1, 0x0

    .restart local v1       #n:I
    :goto_a9
    if-ge v1, v4, :cond_b8

    .line 641
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 643
    :cond_b8
    const/4 v9, 0x4

    array-length v10, v0

    invoke-static {v9, v0, v10, p2}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigestSHA1(I[BI[B)Ljava/lang/String;

    move-result-object v5

    .line 644
    goto/16 :goto_23

    .line 649
    .end local v0           #bkey:[B
    .end local v1           #n:I
    :pswitch_c0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_cd

    .line 651
    const-string v9, "pszPinCode is null"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 655
    :cond_cd
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMTargetAdapter;->xdmGetNetPinFormIMSI()Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 661
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 662
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 663
    add-int v4, v2, v3

    .line 664
    if-nez v4, :cond_ea

    .line 666
    const-string v9, "nSecKeyLen is 0"

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 669
    :cond_ea
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Key Len :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 671
    move-object v8, v6

    .line 672
    new-array v0, v4, [B

    .line 673
    .restart local v0       #bkey:[B
    const/4 v1, 0x0

    .restart local v1       #n:I
    :goto_108
    if-ge v1, v4, :cond_117

    .line 675
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v1

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 677
    :cond_117
    const/4 v9, 0x4

    array-length v10, v0

    invoke-static {v9, v0, v10, p2}, Lcom/wssyncmldm/eng/core/XDMAuth;->xdmAuthMakeDigestSHA1(I[BI[B)Ljava/lang/String;

    move-result-object v5

    .line 678
    goto/16 :goto_23

    .line 691
    .end local v0           #bkey:[B
    .end local v1           #n:I
    :cond_11f
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p4}, Ljava/lang/String;-><init>([B)V

    .line 692
    .local v7, szMac:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pszHexDigest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 693
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pszMAC "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_159

    .line 697
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 700
    :cond_159
    const/4 v9, 0x1

    goto/16 :goto_9

    .line 590
    :pswitch_data_15c
    .packed-switch 0x80
        :pswitch_14
        :pswitch_6b
        :pswitch_c0
    .end packed-switch
.end method

.method public static xnotiPushAdpBootstrapInstallRetry(IILandroid/content/Context;)Z
    .registers 6
    .parameter "nSec"
    .parameter "nID"
    .parameter "m_Context"

    .prologue
    .line 479
    const-string v0, ""

    .line 480
    .local v0, szResponseText:Ljava/lang/String;
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 482
    packed-switch p0, :pswitch_data_20

    .line 491
    invoke-static {v0, p2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallVerify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 493
    const-string v1, "xnotiPushAdpBootstrapInstallRetry FAIL"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 494
    const/4 v1, 0x0

    .line 498
    :goto_16
    return v1

    .line 486
    :pswitch_17
    const/4 v1, 0x0

    const/16 v2, 0xb6

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 498
    :cond_1d
    const/4 v1, 0x1

    goto :goto_16

    .line 482
    nop

    :pswitch_data_20
    .packed-switch 0x81
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static xnotiPushAdpBootstrapInstallVerify(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14
    .parameter "szPinCode"
    .parameter "m_Context"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xb8

    const/4 v5, 0x0

    .line 509
    const/4 v4, 0x0

    .line 510
    .local v4, ptWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;
    const/4 v1, 0x0

    .line 512
    .local v1, eError:I
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiGetCurAuthCnt()I

    move-result v2

    .line 513
    .local v2, nAuthCnt:I
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiGetCurBootStrapId()I

    move-result v3

    .line 515
    .local v3, nBootstrapId:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "g_nBootStrapId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 516
    invoke-static {v3}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReadPushData(I)Lcom/wssyncmldm/noti/XNOTIWapPush;

    move-result-object v4

    .line 518
    if-nez v4, :cond_44

    .line 520
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xnotiPushAdpReadPushData :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 521
    invoke-static {v11, v10}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 566
    :cond_43
    :goto_43
    return v5

    .line 525
    :cond_44
    iget-object v6, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    if-eqz v6, :cond_4d

    iget-object v6, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    array-length v6, v6

    if-nez v6, :cond_56

    .line 527
    :cond_4d
    const-string v6, "ptWapPush.pBody NULL"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 528
    invoke-static {v11, v10}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_43

    .line 532
    :cond_56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pszPinCode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 535
    :cond_72
    iget-object v6, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v6, v6, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nSEC:I

    iget-object v7, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    iget-object v8, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v8, v8, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    iget-object v9, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget-object v9, v9, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->szMAC:[B

    invoke-static {v6, p0, v7, v8, v9}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallCheckSecurity(ILjava/lang/String;[BI[B)Z

    move-result v0

    .line 538
    .local v0, bcheck:Z
    if-nez v0, :cond_a3

    .line 540
    const-string v6, "xnotiPushAdpBootstrapInstallVerify false"

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 541
    add-int/lit8 v2, v2, 0x1

    .line 542
    const/4 v6, 0x3

    if-lt v2, v6, :cond_98

    .line 544
    const/4 v2, 0x0

    .line 545
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurAuthCnt(I)V

    .line 546
    invoke-static {v11, v10}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_43

    .line 552
    :cond_98
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurAuthCnt(I)V

    .line 553
    iget-object v6, v4, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v6, v6, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nSEC:I

    invoke-static {v6, v3, p1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallRetry(IILandroid/content/Context;)Z

    goto :goto_43

    .line 559
    :cond_a3
    const/4 v2, 0x0

    .line 560
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurAuthCnt(I)V

    .line 561
    invoke-static {v4, p1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpBootstrapInstallApp(Lcom/wssyncmldm/noti/XNOTIWapPush;Landroid/content/Context;)I

    move-result v1

    .line 562
    if-nez v1, :cond_43

    .line 566
    const/4 v5, 0x1

    goto :goto_43
.end method

.method public static xnotiPushAdpClearSessionStatus(I)V
    .registers 4
    .parameter "nAppId"

    .prologue
    .line 788
    const-string v2, ""

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 789
    const/4 v1, 0x0

    .line 790
    .local v1, nFileId:I
    packed-switch p0, :pswitch_data_4a

    .line 821
    :cond_9
    :goto_9
    return-void

    .line 797
    :pswitch_a
    const/16 v2, 0x1d

    :try_start_c
    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 798
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpResetSessionSaveState(I)V

    .line 799
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 800
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetBackUpServerUrl()V

    .line 801
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 802
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOUpdateMechanism(I)V

    .line 803
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v1

    .line 804
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 805
    const/4 v2, 0x0

    sput v2, Lcom/wssyncmldm/XDMService;->g_nResumeStatus:I

    .line 806
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOInitiatedType(I)V

    .line 807
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 808
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileExists(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_9

    .line 810
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbAdpFileDelete(Ljava/lang/String;I)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_41

    goto :goto_9

    .line 813
    :catch_41
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_9

    .line 790
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public static xnotiPushAdpExcuteResumeNoti(I)I
    .registers 9
    .parameter "nAppId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 968
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNofiInfo()Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    move-result-object v1

    .line 969
    .local v1, pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    if-nez v1, :cond_11

    .line 971
    const-string v2, "Get Noti Info File Read Error"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 972
    const/4 v2, -0x1

    .line 1054
    :goto_10
    return v2

    .line 975
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nSessionSaveState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nNotiUiEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nNotiRetryCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 979
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    if-eq v3, v5, :cond_62

    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e0

    .line 981
    :cond_62
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiRetryCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_78

    .line 983
    const-string v3, "Noti Retry Count MAX. All Clear"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 984
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpClearSessionStatus(I)V

    .line 985
    const/16 v3, 0x92

    invoke-static {v7, v3}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 987
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    goto :goto_10

    .line 991
    :cond_78
    const-string v3, "Current NOTI SAVED State"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 992
    invoke-static {v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentSetServerInitiatedStatus(Z)V

    .line 994
    const-string v3, "OPEN"

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 996
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 997
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    .line 1042
    :cond_93
    :goto_93
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    iget v4, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    iget v5, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiRetryCount:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSessionSaveStatus(IIII)Z

    goto/16 :goto_10

    .line 1001
    :cond_a0
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b9

    .line 1005
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1007
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1008
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_93

    .line 1010
    :cond_b5
    invoke-static {v5}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_93

    .line 1018
    :cond_b9
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    if-ne v3, v6, :cond_d1

    .line 1022
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpStartSession()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 1024
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmProtoIsWIFIConnected()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 1025
    invoke-static {v6}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_93

    .line 1027
    :cond_cd
    invoke-static {v5}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpSetUiMode(I)V

    goto :goto_93

    .line 1037
    :cond_d1
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    invoke-static {v3}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 1038
    iget v3, v1, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nNotiUiEvent:I

    invoke-static {v3}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpSelectNotiEvt(I)I

    move-result v0

    .line 1039
    .local v0, nMessage:I
    invoke-static {v7, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_93

    .line 1047
    .end local v0           #nMessage:I
    :cond_e0
    const-string v3, "Current NOTI NOT SAVED State. EXIT. EXIT."

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1049
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpClearSessionStatus(I)V

    .line 1051
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpHandleNotiQueue()V

    goto/16 :goto_10
.end method

.method public static xnotiPushAdpFreePushData()V
    .registers 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PtWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;

    .line 193
    return-void
.end method

.method public static xnotiPushAdpHandleNotiQueue()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 921
    invoke-static {v4}, Lcom/wssyncmldm/db/file/XDB;->xdbGetNotiSessionID(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, szSessionID:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete Noti Msg sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 926
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiDeleteSessionId(Ljava/lang/String;)V

    .line 929
    :cond_24
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiExistInfo()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 932
    const-string v2, "Next Noti Msg Execute"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 934
    sget-boolean v2, Lcom/wssyncmldm/XDMService;->XDM_SYSTEM_ROOTING:Z

    if-nez v2, :cond_58

    .line 936
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmCheckSystemRooting()I

    .line 938
    sget v2, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_41

    .line 940
    const-string v2, "System rooting not scan. FOTA not exec"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 958
    :cond_40
    :goto_40
    return-void

    .line 943
    :cond_41
    sget v2, Lcom/wssyncmldm/XDMService;->g_nSysScopeState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_58

    .line 945
    invoke-static {}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentGetRootingNotScanStatus()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 947
    invoke-static {}, Lcom/wssyncmldm/db/sql/XNOTIDbSqlQuery;->xnotiDbSqlInfoDeleteAll()V

    .line 948
    invoke-static {v4}, Lcom/wssyncmldm/agent/XDMTask;->xdmAgentSetRootingNotScanStatus(Z)V

    .line 950
    :cond_52
    const-string v2, "System rooting. FOTA not exec"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_40

    .line 955
    :cond_58
    invoke-static {}, Lcom/wssyncmldm/db/file/XDBNoti;->xdbNotiGetInfo()Lcom/wssyncmldm/db/file/XDBNotiInfo;

    move-result-object v0

    .line 956
    .local v0, notiInfo:Lcom/wssyncmldm/db/file/XDBNotiInfo;
    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_40
.end method

.method public static xnotiPushAdpProcessNotiMessage(I)V
    .registers 6
    .parameter "nNotiUiEvent"

    .prologue
    const/4 v4, 0x0

    .line 1078
    const/4 v1, 0x0

    .line 1079
    .local v1, nNetworkState:I
    const/16 v0, 0x8d

    .line 1081
    .local v0, nMessage:I
    const/4 v2, 0x1

    invoke-static {v4, v2, p0, v4}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSessionSaveStatus(IIII)Z

    .line 1082
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckNetworkReady()I

    move-result v1

    .line 1084
    if-nez v1, :cond_17

    .line 1086
    invoke-static {p0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpSelectNotiEvt(I)I

    move-result v0

    .line 1087
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    .line 1095
    :goto_16
    return-void

    .line 1092
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nNetworkState is Used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 1093
    invoke-static {v4, p0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpSuspendNotiAction(II)V

    goto :goto_16
.end method

.method public static xnotiPushAdpProcessWapPushMsg(I)V
    .registers 6
    .parameter "nId"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, nID:I
    const/4 v2, 0x0

    .line 204
    .local v2, ptWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;
    const/4 v1, 0x0

    .line 205
    .local v1, ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    move v0, p0

    .line 207
    invoke-static {v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReadPushData(I)Lcom/wssyncmldm/noti/XNOTIWapPush;

    move-result-object v2

    .line 208
    if-nez v2, :cond_b

    .line 231
    :goto_a
    return-void

    .line 213
    :cond_b
    packed-switch v0, :pswitch_data_32

    .line 228
    :pswitch_e
    const-string v3, "Not Support Content Type"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_a

    .line 216
    :pswitch_14
    new-instance v1, Lcom/wssyncmldm/noti/XNOTIMessage;

    .end local v1           #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    invoke-direct {v1}, Lcom/wssyncmldm/noti/XNOTIMessage;-><init>()V

    .line 217
    .restart local v1       #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    const/4 v3, 0x1

    iput v3, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    .line 218
    iget-object v3, v2, Lcom/wssyncmldm/noti/XNOTIWapPush;->pBody:[B

    iput-object v3, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 219
    iget-object v3, v2, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v3, v3, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nBodyLen:I

    iput v3, v1, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    .line 220
    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 224
    :pswitch_2d
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdapterBootstrap(Lcom/wssyncmldm/noti/XNOTIWapPush;)I

    goto :goto_a

    .line 213
    nop

    :pswitch_data_32
    .packed-switch 0x201
        :pswitch_14
        :pswitch_e
        :pswitch_2d
    .end packed-switch
.end method

.method public static xnotiPushAdpReadPushData(I)Lcom/wssyncmldm/noti/XNOTIWapPush;
    .registers 2
    .parameter "nID"

    .prologue
    .line 166
    sget-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PtWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;

    return-object v0
.end method

.method public static xnotiPushAdpReceiveBootStrap(II[BLandroid/content/Context;)I
    .registers 13
    .parameter "pHeader"
    .parameter "nLength"
    .parameter "pBody"
    .parameter "m_Context"

    .prologue
    const/4 v6, -0x1

    .line 732
    new-instance v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    invoke-direct {v5}, Lcom/wssyncmldm/db/file/XDBProfileInfo;-><init>()V

    .line 733
    .local v5, pProfileInfo:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v3, 0x0

    .line 734
    .local v3, nRet:I
    const/4 v2, 0x0

    .line 735
    .local v2, bFinish:Z
    const/4 v4, 0x0

    .line 737
    .local v4, nStatus:I
    if-eqz p1, :cond_d

    if-nez p2, :cond_e

    .line 779
    :cond_d
    :goto_d
    return v6

    .line 740
    :cond_e
    new-instance v1, Lcom/wssyncmldm/agent/XDMAgent;

    invoke-direct {v1}, Lcom/wssyncmldm/agent/XDMAgent;-><init>()V

    .line 742
    .local v1, agent:Lcom/wssyncmldm/agent/XDMAgent;
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v4

    .line 743
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nStatus "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 744
    const/4 v2, 0x0

    .line 746
    if-nez v2, :cond_3e

    if-nez v4, :cond_3e

    .line 748
    invoke-virtual {v1, p1, p2}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentInstallBootStrap(I[B)Z

    move-result v7

    if-nez v7, :cond_44

    .line 750
    const-string v7, "Returned [FALSE]"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d

    .line 756
    :cond_3e
    const-string v7, "Returned [FALSE]"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d

    .line 761
    :cond_44
    invoke-virtual {v1, v5}, Lcom/wssyncmldm/agent/XDMAgent;->xdmAgentGetDMInfoFromOmTreeVer12(Lcom/wssyncmldm/db/file/XDBProfileInfo;)I

    move-result v3

    .line 765
    if-nez v3, :cond_d

    .line 770
    invoke-static {v5}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xdmAgentSaveBootstrapDateToFFS(Lcom/wssyncmldm/db/file/XDBProfileInfo;)V

    .line 771
    const/4 v0, 0x0

    .line 772
    .local v0, Index:I
    const-string v6, "Client Registration after DM Bootstrap Installation success "

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 774
    iget-object v6, v5, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ServerID:Ljava/lang/String;

    invoke-static {v6}, Lcom/wssyncmldm/db/file/XDB;->xdbSetActiveProfileIndexByServerID(Ljava/lang/String;)I

    move-result v0

    .line 775
    invoke-static {v0}, Lcom/wssyncmldm/db/file/XDB;->xdbSetProfileIndex(I)V

    .line 777
    invoke-static {v5, p3}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpSetNetProfile(Ljava/lang/Object;Landroid/content/Context;)Z

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bootstrap Response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v6, v3

    .line 779
    goto :goto_d
.end method

.method public static xnotiPushAdpResetSessionSaveState(I)V
    .registers 4
    .parameter "nAppId"

    .prologue
    const/4 v2, 0x0

    .line 1063
    invoke-static {p0}, Lcom/wssyncmldm/db/file/XDB;->xdbGetSessionSaveStatus(I)Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;

    move-result-object v0

    .line 1065
    .local v0, pSessionSaveInfo:Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/wssyncmldm/db/file/XDBSessionSaveInfo;->nSessionSaveState:I

    if-eqz v1, :cond_e

    .line 1067
    invoke-static {p0, v2, v2, v2}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSessionSaveStatus(IIII)Z

    .line 1069
    :cond_e
    const/4 v0, 0x0

    .line 1070
    return-void
.end method

.method public static xnotiPushAdpResumeNotiAction(I)V
    .registers 4
    .parameter "nAppId"

    .prologue
    .line 1103
    const/4 v1, 0x0

    .line 1104
    .local v1, nNetworkState:I
    const/4 v0, 0x0

    .line 1106
    .local v0, nEvent:I
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMInitAdapter;->xdmInitAdpCheckNetworkReady()I

    move-result v1

    .line 1107
    if-eqz v1, :cond_16

    .line 1109
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/db/file/XDBAdapter;->xdbGetNotiEvent(I)I

    move-result v0

    .line 1110
    packed-switch v0, :pswitch_data_1a

    .line 1119
    const-string v2, "CAN NOT EXCUTE Noti Resume. EXIT"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 1125
    :goto_15
    :pswitch_15
    return-void

    .line 1124
    :cond_16
    invoke-static {p0}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpExcuteResumeNoti(I)I

    goto :goto_15

    .line 1110
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method public static xnotiPushAdpSelectNotiEvt(I)I
    .registers 2
    .parameter "nEvent"

    .prologue
    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, nMessage:I
    packed-switch p0, :pswitch_data_14

    .line 846
    const/16 v0, 0x8d

    .line 849
    :goto_6
    return v0

    .line 834
    :pswitch_7
    const/16 v0, 0x8d

    .line 835
    goto :goto_6

    .line 837
    :pswitch_a
    const/16 v0, 0x8e

    .line 838
    goto :goto_6

    .line 840
    :pswitch_d
    const/16 v0, 0x8f

    .line 841
    goto :goto_6

    .line 843
    :pswitch_10
    const/16 v0, 0x90

    .line 844
    goto :goto_6

    .line 831
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method private static xnotiPushAdpSetNetProfile(Ljava/lang/Object;Landroid/content/Context;)Z
    .registers 8
    .parameter "pConnectSetting"
    .parameter "m_Context"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 873
    move-object v0, p0

    check-cast v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;

    .line 874
    .local v0, ConnectSetting:Lcom/wssyncmldm/db/file/XDBProfileInfo;
    const/4 v1, 0x0

    .line 876
    .local v1, pNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
    if-nez v0, :cond_e

    .line 878
    const-string v3, "pData is null"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 911
    :goto_d
    return v2

    .line 882
    :cond_e
    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-boolean v4, v4, Lcom/wssyncmldm/db/file/XDBInfoConRef;->Active:Z

    if-eq v4, v3, :cond_1b

    .line 884
    const-string v2, "Con ref not exist!! Skip-"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    move v2, v3

    .line 885
    goto :goto_d

    .line 888
    :cond_1b
    new-instance v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;

    .end local v1           #pNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
    invoke-direct {v1, p1}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;-><init>(Landroid/content/Context;)V

    .line 889
    .restart local v1       #pNetInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ProfileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->szAccountName:Ljava/lang/String;

    .line 891
    new-instance v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    invoke-direct {v4}, Lcom/wssyncmldm/agent/XDMAppConnectSetting;-><init>()V

    iput-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    .line 892
    iget-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Addr:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szApn:Ljava/lang/String;

    .line 893
    iget-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefPX;->Addr:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->m_szPrimaryProxyAddr:Ljava/lang/String;

    .line 894
    iget-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddr:Lcom/wssyncmldm/agent/XDMAppConnectSetting;

    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->PX:Lcom/wssyncmldm/db/file/XDBConRefPX;

    iget v5, v5, Lcom/wssyncmldm/db/file/XDBConRefPX;->nPortNbr:I

    iput v5, v4, Lcom/wssyncmldm/agent/XDMAppConnectSetting;->nPrimary_proxy_port:I

    .line 896
    new-instance v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    invoke-direct {v4}, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;-><init>()V

    iput-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    .line 897
    iget-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szId:Ljava/lang/String;

    .line 898
    iget-object v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->authInfo:Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;

    iget-object v5, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefNAP;->Auth:Lcom/wssyncmldm/db/file/XDBConRefAuth;

    iget-object v5, v5, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    iput-object v5, v4, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;->szPasswd:Ljava/lang/String;

    .line 900
    iget-object v4, v0, Lcom/wssyncmldm/db/file/XDBProfileInfo;->ConRef:Lcom/wssyncmldm/db/file/XDBInfoConRef;

    iget-object v4, v4, Lcom/wssyncmldm/db/file/XDBInfoConRef;->NAP:Lcom/wssyncmldm/db/file/XDBConRefNAP;

    iget v4, v4, Lcom/wssyncmldm/db/file/XDBConRefNAP;->nAddrType:I

    iput v4, v1, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;->napAddrType:I

    .line 903
    invoke-static {v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpNetGetProfile(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)V

    .line 905
    invoke-static {v1}, Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpNetSaveProfile(Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;)I

    move-result v4

    if-eqz v4, :cond_7f

    .line 907
    const-string v3, "xtpAdpNetSaveProfile Failed"

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d

    :cond_7f
    move v2, v3

    .line 911
    goto :goto_d
.end method

.method public static xnotiPushAdpSuspendNotiAction(II)V
    .registers 4
    .parameter "nAppId"
    .parameter "nNotiUiEvent"

    .prologue
    const/4 v1, 0x0

    .line 859
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetSessionSaveStatus(IIII)Z

    .line 861
    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetNotiEvent(I)V

    .line 862
    return-void
.end method

.method public static xnotiPushAdpWritePushData(Lcom/wssyncmldm/noti/XNOTIWapPush;I)I
    .registers 3
    .parameter "pWapPush"
    .parameter "nID"

    .prologue
    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 v0, 0x1

    .line 156
    :goto_3
    return v0

    .line 154
    :cond_4
    sput-object p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PtWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;

    .line 156
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static xnotiPushDataHandling()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, wssPushData:Lcom/wssyncmldm/noti/XNOTIData;
    sget-object v3, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 363
    :try_start_5
    sget-object v2, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 365
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetNotiProcessing(Z)V

    .line 366
    const-string v2, "mPushDataQueue is empty. return"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 367
    monitor-exit v3

    .line 392
    :cond_17
    :goto_17
    return-void

    .line 370
    :cond_18
    sget-object v2, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_PushDataQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/wssyncmldm/noti/XNOTIData;

    move-object v1, v0

    .line 371
    const-string v2, "mPushDataQueue poll"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 372
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_38

    .line 374
    if-eqz v1, :cond_17

    .line 376
    iget v2, v1, Lcom/wssyncmldm/noti/XNOTIData;->type:I

    packed-switch v2, :pswitch_data_48

    .line 387
    invoke-static {v4}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetNotiProcessing(Z)V

    .line 388
    const-string v2, "PUSH_TYPE is not exist"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_17

    .line 372
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 379
    :pswitch_3b
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIData;->pushData:[B

    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushDataReceive([B)V

    goto :goto_17

    .line 383
    :pswitch_41
    iget-object v2, v1, Lcom/wssyncmldm/noti/XNOTIData;->pushData:[B

    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiIPPushDataReceive([B)V

    goto :goto_17

    .line 376
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_41
    .end packed-switch
.end method

.method public static xnotiPushDataReceive([B)V
    .registers 4
    .parameter "pushData"

    .prologue
    .line 396
    if-nez p0, :cond_8

    .line 398
    const-string v1, "pushData is null"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 405
    :goto_7
    return-void

    .line 402
    :cond_8
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetNotiProcessing(Z)V

    .line 403
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIAdapter;

    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTIAdapter;-><init>()V

    .line 404
    .local v0, pushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReceiveMsg([BILjava/lang/String;)Z

    goto :goto_7
.end method

.method public static xnotiPushGetDate()Ljava/lang/String;
    .registers 1

    .prologue
    .line 184
    sget-object v0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_szPushDate:Ljava/lang/String;

    return-object v0
.end method

.method public static xnotiPushSetDate(Ljava/lang/String;)V
    .registers 1
    .parameter "szDate"

    .prologue
    .line 175
    sput-object p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_szPushDate:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public static xnotiSetBootstrapUri(Landroid/net/Uri;)V
    .registers 1
    .parameter "curUri"

    .prologue
    .line 297
    sput-object p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_BootStrapUri:Landroid/net/Uri;

    .line 298
    return-void
.end method

.method public static xnotiSetCurAuthCnt(I)V
    .registers 1
    .parameter "nCnt"

    .prologue
    .line 1160
    sput p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_nAuthCount:I

    .line 1161
    return-void
.end method

.method public static xnotiSetCurBootStrapId(I)V
    .registers 1
    .parameter "nId"

    .prologue
    .line 1142
    sput p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_nBootStrapId:I

    .line 1143
    return-void
.end method

.method public static xnotiSetNotiProcessing(Z)V
    .registers 3
    .parameter "notiProcessing"

    .prologue
    .line 334
    sput-boolean p0, Lcom/wssyncmldm/noti/XNOTIAdapter;->m_NotiProcessing:Z

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notiProcessing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 336
    return-void
.end method


# virtual methods
.method public xnotiDeleteCurBootstrapMessage(Landroid/content/Context;)Z
    .registers 7
    .parameter "context"

    .prologue
    .line 307
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiGetBootstrapUri()Landroid/net/Uri;

    move-result-object v0

    .line 309
    .local v0, curUri:Landroid/net/Uri;
    if-nez v0, :cond_d

    .line 311
    const-string v2, "Current Uri is null"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    .line 324
    :goto_c
    return v2

    .line 317
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_18

    .line 324
    :goto_16
    const/4 v2, 0x1

    goto :goto_c

    .line 319
    :catch_18
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public xnotiIpPushAdpReceiveMsg([BI)Z
    .registers 7
    .parameter "pBody"
    .parameter "nBodySize"

    .prologue
    const/4 v3, 0x1

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIMessage;

    .end local v0           #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    invoke-direct {v0}, Lcom/wssyncmldm/noti/XNOTIMessage;-><init>()V

    .line 135
    .restart local v0       #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    iput v3, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    .line 136
    iput-object p1, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->pBody:[B

    .line 137
    iput p2, v0, Lcom/wssyncmldm/noti/XNOTIMessage;->bodySize:I

    .line 139
    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 140
    return v3
.end method

.method public xnotiPushAdpReceiveMsg(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 12
    .parameter "context"
    .parameter "dmuri"

    .prologue
    const/4 v2, 0x0

    .line 63
    const/4 v8, 0x1

    .line 65
    .local v8, bRet:Z
    new-instance v0, Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;-><init>(Lcom/wssyncmldm/noti/XNOTIAdapter;Landroid/content/ContentResolver;)V

    .line 66
    .local v0, queryHandler:Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;
    const/16 v1, 0x2537

    sget-object v4, Lcom/wssyncmldm/noti/XNOTIAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v3, p2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/wssyncmldm/noti/XNOTIAdapter$xnotiBackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetBootstrapUri(Landroid/net/Uri;)V

    .line 69
    return v8
.end method

.method public xnotiPushAdpReceiveMsg([BILjava/lang/String;)Z
    .registers 16
    .parameter "pMsg"
    .parameter "nMsgLen"
    .parameter "szDate"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, ptWapPush:Lcom/wssyncmldm/noti/XNOTIWapPush;
    const/4 v4, 0x0

    .line 76
    .local v4, ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    const/4 v1, 0x0

    .line 77
    .local v1, eRet:I
    const/16 v2, 0x204

    .line 79
    .local v2, nID:I
    const/4 v0, 0x1

    .line 81
    .local v0, bRet:Z
    invoke-static {p1, p2}, Lcom/wssyncmldm/noti/XNOTIHandler;->xnotiPushHdlrParsingWSPHeader([BI)Lcom/wssyncmldm/noti/XNOTIWapPush;

    move-result-object v5

    .line 82
    if-nez v5, :cond_15

    .line 84
    const-string v7, "xnotiPushHdlrParsingWSPHeader Error"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 127
    :goto_14
    return v6

    .line 88
    :cond_15
    iget-object v8, v5, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v8, v8, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    packed-switch v8, :pswitch_data_88

    .line 106
    :pswitch_1c
    invoke-static {v6}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurBootStrapId(I)V

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not Support Content Type :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "0x%x"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/wssyncmldm/noti/XNOTIWapPush;->tWapPushInfo:Lcom/wssyncmldm/noti/XNOTIWapPushInfo;

    iget v10, v10, Lcom/wssyncmldm/noti/XNOTIWapPushInfo;->nContentType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 111
    :goto_47
    const/16 v6, 0x204

    if-ne v2, v6, :cond_6f

    .line 113
    const/4 v0, 0x0

    move v6, v0

    .line 114
    goto :goto_14

    .line 91
    :pswitch_4e
    const/16 v2, 0x201

    .line 92
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurBootStrapId(I)V

    .line 93
    new-instance v4, Lcom/wssyncmldm/noti/XNOTIMessage;

    .end local v4           #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    invoke-direct {v4}, Lcom/wssyncmldm/noti/XNOTIMessage;-><init>()V

    .line 94
    .restart local v4       #ptNoti:Lcom/wssyncmldm/noti/XNOTIMessage;
    iput v7, v4, Lcom/wssyncmldm/noti/XNOTIMessage;->push_type:I

    .line 95
    new-array v6, p2, [B

    iput-object v6, v4, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 96
    iput p2, v4, Lcom/wssyncmldm/noti/XNOTIMessage;->dataSize:I

    .line 97
    iput-object p1, v4, Lcom/wssyncmldm/noti/XNOTIMessage;->pData:[B

    .line 98
    const/16 v6, 0x33

    invoke-static {v6, v4, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v6, v7

    .line 99
    goto :goto_14

    .line 102
    :pswitch_69
    const/16 v2, 0x203

    .line 103
    invoke-static {v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiSetCurBootStrapId(I)V

    goto :goto_47

    .line 117
    :cond_6f
    invoke-static {p3}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushSetDate(Ljava/lang/String;)V

    .line 118
    invoke-static {v5, v2}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpWritePushData(Lcom/wssyncmldm/noti/XNOTIWapPush;I)I

    move-result v1

    .line 119
    if-eqz v1, :cond_7b

    .line 121
    const/4 v0, 0x0

    move v6, v0

    .line 122
    goto :goto_14

    .line 125
    :cond_7b
    move v3, v2

    .line 126
    .local v3, pSendId:I
    const/16 v6, 0x39

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7, v11}, Lcom/wssyncmldm/eng/core/XDMMsg;->xdmSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    move v6, v0

    .line 127
    goto :goto_14

    .line 88
    nop

    :pswitch_data_88
    .packed-switch 0x42
        :pswitch_69
        :pswitch_1c
        :pswitch_4e
    .end packed-switch
.end method

.method public xnotiPushAdpSaveBootstrapWbxmlData([B)Z
    .registers 5
    .parameter "pData"

    .prologue
    .line 710
    const/4 v0, 0x1

    .line 711
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 713
    .local v1, nFileId:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdBootstrap()I

    move-result v1

    .line 714
    array-length v2, p1

    invoke-static {v1, v2, p1}, Lcom/wssyncmldm/db/file/XDB;->xdbWriteFile(IILjava/lang/Object;)Z

    move-result v0

    .line 715
    if-nez v0, :cond_12

    .line 717
    const-string v2, "WBXML Data Save Failed"

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 719
    :cond_12
    return v0
.end method
