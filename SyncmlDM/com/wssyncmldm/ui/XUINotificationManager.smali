.class public Lcom/wssyncmldm/ui/XUINotificationManager;
.super Ljava/lang/Object;
.source "XUINotificationManager.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMDefInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;


# static fields
.field private static final NOT_USE_TICKER:I = 0x0

.field private static final STATUS_DOWNLOAD_POSTPONE_DM:I = 0x2

.field private static final STATUS_FOTA_UPDATE_DM:I = 0x4

.field private static final STATUS_NOTIFICATION_DM:I = 0x1

.field private static final STATUS_UPDATE_POSTPONE_DM:I = 0x3

.field private static mServiceConnection:Landroid/content/ServiceConnection;

.field private static m_Context:Landroid/content/Context;

.field private static m_Service:Lcom/wssyncmldm/XDMService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    .line 35
    new-instance v0, Lcom/wssyncmldm/ui/XUINotificationManager$1;

    invoke-direct {v0}, Lcom/wssyncmldm/ui/XUINotificationManager$1;-><init>()V

    sput-object v0, Lcom/wssyncmldm/ui/XUINotificationManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BindService()V
    .registers 5

    .prologue
    .line 56
    sget-object v2, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    if-nez v2, :cond_17

    .line 60
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v3, Lcom/wssyncmldm/XDMService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/wssyncmldm/ui/XUINotificationManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 68
    :cond_17
    :goto_17
    return-void

    .line 63
    :catch_18
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static UnBindService()V
    .registers 3

    .prologue
    .line 72
    sget-object v1, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    if-eqz v1, :cond_d

    .line 76
    :try_start_4
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/wssyncmldm/ui/XUINotificationManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    .line 83
    .local v0, e:Ljava/lang/Exception;
    :cond_d
    :goto_d
    return-void

    .line 78
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 80
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic access$002(Lcom/wssyncmldm/XDMService;)Lcom/wssyncmldm/XDMService;
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    sput-object p0, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    return-object p0
.end method

.method public static xuiNotiInitialize(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 51
    sput-object p0, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static xuiSetIndicator(I)V
    .registers 11
    .parameter "nIndicator"

    .prologue
    const/16 v9, 0xd

    const/4 v5, 0x1

    const v1, 0x7f020004

    const v8, 0x7f020002

    const/4 v4, 0x0

    .line 87
    sget-object v3, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    if-nez v3, :cond_14

    .line 89
    const-string v1, "m_Context is null, return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    .line 256
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 93
    :cond_14
    invoke-static {}, Lcom/wssyncmldm/ui/XUINotificationManager;->BindService()V

    .line 94
    const-string v3, "notification"

    invoke-static {v3}, Lcom/wssyncmldm/XDMService;->xdmGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 96
    .local v0, notificationManager:Landroid/app/NotificationManager;
    if-nez v0, :cond_27

    .line 98
    const-string v1, "NotificationManager is null, return"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_13

    .line 102
    :cond_27
    const/4 v2, 0x0

    .line 103
    .local v2, nTitleStrId:I
    const-string v3, "OPEN"

    const-string v6, "TMO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 104
    const v2, 0x7f0700a0

    .line 108
    :goto_35
    packed-switch p0, :pswitch_data_14c

    .line 253
    const-string v1, "nIndicatorState is NONE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_13

    .line 106
    :cond_3e
    const v2, 0x7f070080

    goto :goto_35

    .line 113
    :pswitch_42
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 114
    sget-object v1, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    if-eqz v1, :cond_13

    .line 115
    sget-object v1, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v1, v5}, Lcom/wssyncmldm/XDMService;->stopForeground(Z)V

    goto :goto_13

    .line 119
    :pswitch_4f
    sget-object v1, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    if-eqz v1, :cond_13

    .line 120
    sget-object v1, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    invoke-virtual {v1, v5}, Lcom/wssyncmldm/XDMService;->stopForeground(Z)V

    goto :goto_13

    .line 125
    :pswitch_59
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_13

    .line 129
    :pswitch_5e
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_13

    .line 133
    :pswitch_63
    const v1, 0x7f020003

    const v3, 0x7f07003c

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_13

    .line 138
    :pswitch_6e
    const v3, 0x7f070072

    const/4 v5, 0x3

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_13

    .line 143
    :pswitch_77
    const v3, 0x7f070072

    const/4 v5, 0x2

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_13

    .line 148
    :pswitch_80
    const-string v1, "OPEN"

    const-string v3, "TMO"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    const v3, 0x7f0700a1

    :goto_8d
    const/4 v5, 0x4

    move v1, v8

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto :goto_13

    :cond_94
    const v3, 0x7f07006b

    goto :goto_8d

    .line 154
    :pswitch_98
    const v3, 0x7f070092

    const/16 v5, 0x9

    move v1, v8

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 159
    :pswitch_a4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetUpdateWait(Ljava/lang/Boolean;)V

    .line 160
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 164
    :pswitch_b1
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 168
    :pswitch_b8
    const v1, 0x7f020003

    const v3, 0x7f07009e

    const/16 v5, 0xb

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    :pswitch_c6
    move v1, v8

    move v3, v2

    move v5, v9

    move v6, p0

    .line 173
    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 178
    :pswitch_cf
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 191
    :pswitch_d4
    const v3, 0x7f07006a

    const/16 v5, 0xf

    move v1, v8

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 196
    :pswitch_e0
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 200
    :pswitch_e7
    const/16 v5, 0x17

    move v1, v8

    move v3, v2

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 205
    :pswitch_f1
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 209
    :pswitch_f8
    const/16 v5, 0x11

    move v1, v8

    move v3, v2

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 214
    :pswitch_102
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 219
    :pswitch_109
    const v3, 0x7f070092

    const/16 v5, 0x13

    move v1, v8

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 224
    :pswitch_115
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 228
    :pswitch_11c
    const v3, 0x7f070072

    const/16 v5, 0x15

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 233
    :pswitch_127
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 237
    :pswitch_12e
    const v3, 0x7f07007d

    const/16 v5, 0x1b

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V

    goto/16 :goto_13

    .line 241
    :pswitch_139
    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_13

    .line 245
    :pswitch_140
    const/4 v7, 0x0

    .local v7, i:I
    :goto_141
    const/16 v1, 0x1d

    if-ge v7, v1, :cond_13

    .line 247
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_141

    .line 108
    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_42
        :pswitch_63
        :pswitch_6e
        :pswitch_59
        :pswitch_77
        :pswitch_5e
        :pswitch_80
        :pswitch_a4
        :pswitch_98
        :pswitch_b1
        :pswitch_b8
        :pswitch_4f
        :pswitch_c6
        :pswitch_cf
        :pswitch_d4
        :pswitch_e0
        :pswitch_f8
        :pswitch_102
        :pswitch_109
        :pswitch_115
        :pswitch_11c
        :pswitch_127
        :pswitch_e7
        :pswitch_f1
        :pswitch_13
        :pswitch_13
        :pswitch_12e
        :pswitch_139
        :pswitch_140
    .end packed-switch
.end method

.method public static xuiSetNotification(Landroid/app/NotificationManager;IIIIII)V
    .registers 22
    .parameter "notificationManager"
    .parameter "moodId"
    .parameter "titleId"
    .parameter "textId"
    .parameter "tickerId"
    .parameter "id"
    .parameter "nIndicatorState"

    .prologue
    .line 260
    const/4 v8, 0x0

    .line 261
    .local v8, text:Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 262
    .local v9, titletext:Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 264
    .local v7, szTickerText:Ljava/lang/String;
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    if-nez v10, :cond_d

    .line 266
    const-string v10, "m_Context is null, return"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 377
    :cond_c
    :goto_c
    return-void

    .line 270
    :cond_d
    if-nez p0, :cond_15

    .line 272
    const-string v10, "NotificationManager is null, return"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_c

    .line 276
    :cond_15
    if-lez p3, :cond_1f

    .line 277
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 278
    :cond_1f
    if-lez p2, :cond_29

    .line 279
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 280
    :cond_29
    if-lez p4, :cond_35

    .line 281
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7           #szTickerText:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 283
    .restart local v7       #szTickerText:Ljava/lang/String;
    :cond_35
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotificationID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / Notification IndicatorState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 285
    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move/from16 v0, p1

    invoke-direct {v6, v0, v7, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 288
    .local v6, notification:Landroid/app/Notification;
    packed-switch p6, :pswitch_data_180

    .line 350
    :pswitch_67
    const/16 v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 351
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    sget-object v13, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v14, Lcom/wssyncmldm/XDMService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 352
    .local v1, contentIntent:Landroid/app/PendingIntent;
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 358
    :goto_81
    const/4 v10, 0x2

    move/from16 v0, p6

    if-eq v0, v10, :cond_8c

    const/16 v10, 0xb

    move/from16 v0, p6

    if-ne v0, v10, :cond_179

    .line 360
    :cond_8c
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    if-eqz v10, :cond_c

    .line 362
    const-string v10, "XDMService is Foreground!!"

    invoke-static {v10}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 365
    :try_start_95
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Service:Lcom/wssyncmldm/XDMService;

    move/from16 v0, p5

    invoke-virtual {v10, v0, v6}, Lcom/wssyncmldm/XDMService;->startForeground(ILandroid/app/Notification;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9c} :catch_9e

    goto/16 :goto_c

    .line 367
    :catch_9e
    move-exception v3

    .line 369
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 302
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_a4
    const/16 v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 303
    new-instance v4, Landroid/content/Intent;

    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v11, Lcom/wssyncmldm/ui/XUINotificationConnectActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v4, intent:Landroid/content/Intent;
    const/high16 v10, 0x1400

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 307
    .restart local v1       #contentIntent:Landroid/app/PendingIntent;
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_81

    .line 312
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_cb
    new-instance v4, Landroid/content/Intent;

    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v11, Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1400

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    const/16 v10, 0xe7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 316
    .restart local v1       #contentIntent:Landroid/app/PendingIntent;
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_81

    .line 321
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_f0
    invoke-static {}, Lcom/wssyncmldm/ui/XUIAdapter;->xuiAdpGetUiMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15d

    .line 323
    const/16 v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 324
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiGetDownloadPercent()I

    move-result v5

    .line 326
    .local v5, nProgressPercent:I
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v10, "com.wssyncmldm"

    const v11, 0x7f03000c

    invoke-direct {v2, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 327
    .local v2, contentView:Landroid/widget/RemoteViews;
    const v10, 0x7f09003f

    move/from16 v0, p1

    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 328
    const v10, 0x7f090041

    sget-object v11, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 329
    const v10, 0x7f090040

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 330
    const v10, 0x7f090033

    const/16 v11, 0x64

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v11, v5, v12}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 331
    iput-object v2, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 333
    new-instance v4, Landroid/content/Intent;

    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v11, Lcom/wssyncmldm/ui/XUIDialogActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .restart local v4       #intent:Landroid/content/Intent;
    const/high16 v10, 0x1400

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    const/16 v10, 0xcb

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 337
    .restart local v1       #contentIntent:Landroid/app/PendingIntent;
    iput-object v1, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_81

    .line 341
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #contentView:Landroid/widget/RemoteViews;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #nProgressPercent:I
    :cond_15d
    const/16 v10, 0x20

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 342
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    sget-object v13, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    const-class v14, Lcom/wssyncmldm/XDMService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 343
    .restart local v1       #contentIntent:Landroid/app/PendingIntent;
    sget-object v10, Lcom/wssyncmldm/ui/XUINotificationManager;->m_Context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_81

    .line 375
    :cond_179
    move/from16 v0, p5

    invoke-virtual {p0, v0, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_c

    .line 288
    :pswitch_data_180
    .packed-switch 0x3
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_f0
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_cb
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
        :pswitch_67
        :pswitch_a4
    .end packed-switch
.end method
