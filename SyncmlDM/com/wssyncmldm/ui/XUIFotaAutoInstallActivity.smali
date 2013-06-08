.class public Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;
.super Landroid/app/ListActivity;
.source "XUIFotaAutoInstallActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;
.implements Lcom/wssyncmldm/interfaces/XFOTAInterface;


# static fields
.field private static final TIME_1_HOUR_IN_ACTIME:I = 0x36ee80

.field private static final TIME_1_MIN_IN_ACTIME:I = 0xea60

.field private static final TIME_INTERVAL_1_DAY:I = 0x5265c00

.field private static m_AutoInstallText:Landroid/widget/TextView;

.field private static m_AutoInstallTime:Landroid/widget/TimePicker;

.field private static m_ReservationDate:Landroid/widget/TextView;

.field private static m_bInstallWaiting:Z

.field private static m_hAutoInstallTimer:Landroid/os/Handler;

.field private static m_nAutoInstallHour:I

.field private static m_nAutoInstallMin:I

.field private static m_nAutoTimer:I

.field private static m_nDialogId:I


# instance fields
.field private final AUTOINSTALL_TIMER_START:I

.field private final AUTOINSTALL_TIMER_STOP:I

.field private m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

.field private m_DAutoinstall:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    sput v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nDialogId:I

    .line 41
    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    .line 42
    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallText:Landroid/widget/TextView;

    .line 43
    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    .line 48
    const/16 v0, 0x1e

    sput v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoTimer:I

    .line 49
    sput-object v2, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_hAutoInstallTimer:Landroid/os/Handler;

    .line 51
    sput-boolean v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_bInstallWaiting:Z

    .line 53
    sput v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    .line 54
    sput v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    .line 46
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_DAutoinstall:Landroid/app/Dialog;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->AUTOINSTALL_TIMER_START:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->AUTOINSTALL_TIMER_STOP:I

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoTimer:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoTimer:I

    return p0
.end method

.method static synthetic access$100()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_hAutoInstallTimer:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    return p0
.end method

.method static synthetic access$500(II)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetAutoinstallDate(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/TimePicker;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    return-object v0
.end method

.method private static xuiGetAutoinstallDate(II)Ljava/lang/String;
    .registers 11
    .parameter "nHour"
    .parameter "nMin"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 416
    const-string v2, ""

    .line 418
    .local v2, szAutoinstallDate:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 419
    .local v1, curtime:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 421
    .local v0, autoinstalltime:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 424
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 426
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    :cond_2d
    const-string v3, "%s / %s / %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 432
    return-object v2
.end method

.method public static xuiGetInstallWaiting()Z
    .registers 1

    .prologue
    .line 469
    sget-boolean v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_bInstallWaiting:Z

    return v0
.end method

.method private xuiGetTextColor()I
    .registers 5

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 440
    .local v1, nColor:I
    :try_start_1
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v1

    .line 447
    :goto_c
    return v1

    .line 442
    :catch_d
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static xuiReservationDateRefresh()V
    .registers 3

    .prologue
    .line 459
    sget-object v0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    sget v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    sget v2, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    invoke-static {v1, v2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetAutoinstallDate(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    return-void
.end method

.method public static xuiSetInstallWaiting(Z)V
    .registers 1
    .parameter "bWaiting"

    .prologue
    .line 464
    sput-boolean p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_bInstallWaiting:Z

    .line 465
    return-void
.end method


# virtual methods
.method public WssAppAutoInstallUiPopUp(I)Z
    .registers 6
    .parameter "id"

    .prologue
    const/16 v3, 0xe3

    const/16 v2, 0xe2

    .line 292
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

    .line 293
    packed-switch p1, :pswitch_data_2e

    .line 306
    :goto_1d
    const/4 v0, 0x1

    return v0

    .line 296
    :pswitch_1f
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 297
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->showDialog(I)V

    goto :goto_1d

    .line 300
    :pswitch_26
    invoke-virtual {p0, v2}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 301
    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->showDialog(I)V

    goto :goto_1d

    .line 293
    nop

    :pswitch_data_2e
    .packed-switch 0xe2
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 70
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, sid:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nDialogId:I

    .line 73
    new-instance v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    sput-object v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_hAutoInstallTimer:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 16
    .parameter "id"

    .prologue
    const v13, 0x7f070073

    const v12, 0x108009b

    const v11, 0x1010355

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 121
    packed-switch p1, :pswitch_data_1dc

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_28
    return-object v7

    .line 124
    :pswitch_29
    const-string v7, "XUI_DL_AUTO_INSTALL_RESERVATION"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 125
    const/16 v7, 0xe3

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 127
    const/16 v7, 0x268

    invoke-static {v7}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 129
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 130
    .local v3, inflaterAutoInstall:Landroid/view/LayoutInflater;
    const v7, 0x7f030006

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, AutoInstallView:Landroid/view/View;
    const v7, 0x7f09002f

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, ReservationText:Landroid/widget/TextView;
    const v7, 0x7f09002d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    .line 133
    const v7, 0x7f09002e

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TimePicker;

    sput-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    .line 134
    const v7, 0x7f07007e

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetTextColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    invoke-static {}, Lcom/wssyncmldm/XDMApplication;->xdmGetContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, strTimeFormat:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sput v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sput v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    .line 141
    const-string v7, "24"

    invoke-virtual {v7, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_127

    .line 143
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 144
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    sget v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 151
    :goto_b6
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    new-instance v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$2;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 161
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    sget v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallHour:I

    sget v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoInstallMin:I

    invoke-static {v8, v9}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetAutoinstallDate(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_ReservationDate:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    if-nez v7, :cond_e1

    .line 165
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    .line 167
    :cond_e1
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07002d

    new-instance v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$6;

    invoke-direct {v9, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070024

    new-instance v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$5;

    invoke-direct {v9, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$4;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$3;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_DAutoinstall:Landroid/app/Dialog;

    .line 215
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_DAutoinstall:Landroid/app/Dialog;

    goto/16 :goto_28

    .line 148
    :cond_127
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallTime:Landroid/widget/TimePicker;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_b6

    .line 218
    .end local v0           #AutoInstallView:Landroid/view/View;
    .end local v2           #ReservationText:Landroid/widget/TextView;
    .end local v3           #inflaterAutoInstall:Landroid/view/LayoutInflater;
    .end local v5           #strTimeFormat:Ljava/lang/String;
    :pswitch_131
    const-string v7, "XUI_DL_AUTO_INSTALL_START"

    invoke-static {v7}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 219
    const/16 v7, 0x8

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 220
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 221
    const/16 v7, 0x1c

    invoke-static {v7}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 222
    const/16 v7, 0xe2

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 224
    const v7, 0x7f07007f

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    sget v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nAutoTimer:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, szMessage:Ljava/lang/String;
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    if-nez v7, :cond_169

    .line 227
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    .line 229
    :cond_169
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 230
    .local v4, inflaterAutoInstallcount:Landroid/view/LayoutInflater;
    const v7, 0x7f030005

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, AutoInstallcountView:Landroid/view/View;
    const v7, 0x7f09002b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sput-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallText:Landroid/widget/TextView;

    .line 232
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AutoInstallText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->xuiGetTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    invoke-static {}, Lcom/wssyncmldm/XDMService;->xdmWakeLockAcquire()V

    .line 236
    sget-object v7, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_hAutoInstallTimer:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_AdAutoinstall:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v12}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f07002a

    new-instance v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$10;

    invoke-direct {v9, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070082

    new-instance v9, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;

    invoke-direct {v9, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$7;

    invoke-direct {v8, p0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_DAutoinstall:Landroid/app/Dialog;

    .line 283
    iget-object v7, p0, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_DAutoinstall:Landroid/app/Dialog;

    goto/16 :goto_28

    .line 121
    :pswitch_data_1dc
    .packed-switch 0xe2
        :pswitch_29
        :pswitch_131
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 112
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 114
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 312
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 316
    :try_start_5
    sget v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nDialogId:I

    if-lez v1, :cond_e

    .line 321
    sget v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_nDialogId:I

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->WssAppAutoInstallUiPopUp(I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_12

    .line 329
    :cond_e
    :goto_e
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 330
    return-void

    .line 324
    :catch_12
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 335
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 337
    const/16 v0, 0xe2

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 338
    const/16 v0, 0xe3

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->removeDialog(I)V

    .line 339
    const/16 v0, 0x269

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSendMessageDmHandler(I)V

    .line 340
    invoke-super {p0}, Landroid/app/ListActivity;->onUserLeaveHint()V

    .line 341
    return-void
.end method

.method protected xuiFotaPostpone()V
    .registers 5

    .prologue
    .line 452
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .local v0, i:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 454
    return-void
.end method

.method public xuiFotaSetAutoInstall(II)V
    .registers 16
    .parameter "nHour"
    .parameter "nMin"

    .prologue
    .line 345
    const-string v1, ""

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v11

    .line 347
    .local v11, nStatus:I
    new-instance v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;

    invoke-direct {v12}, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;-><init>()V

    .line 348
    .local v12, pPostUpdate:Lcom/wssyncmldm/db/file/XDBPostPoneInfo;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 349
    .local v10, curtime:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 350
    .local v9, autoinstalltime:Ljava/util/Calendar;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 352
    .local v0, fiexedtime:Landroid/text/format/Time;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/wssyncmldm/XDMService;->xdmStopAlarm(I)V

    .line 353
    sget-object v1, Lcom/wssyncmldm/ui/XUIFotaAutoInstallActivity;->m_hAutoInstallTimer:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v8

    .line 356
    .local v8, PostponeTimerStateInfo:Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;
    if-nez v8, :cond_32

    .line 358
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaCreatePostponeTimerStateInfo()V

    .line 359
    invoke-static {}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaGetPostponeTimerStateInfo()Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;

    move-result-object v8

    .line 362
    :cond_32
    const/16 v1, 0xb

    invoke-virtual {v9, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 363
    const/16 v1, 0xc

    invoke-virtual {v9, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 365
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_ee

    .line 367
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 375
    :cond_53
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->bSelect_PostponeTime:Z

    .line 378
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 379
    const/4 v1, 0x0

    iget v2, v0, Landroid/text/format/Time;->minute:I

    iget v3, v0, Landroid/text/format/Time;->hour:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nAfterDownLoadBatteryStatus:Z

    .line 383
    invoke-static {v8}, Lcom/wssyncmldm/agent/fota/XFOTADl;->xfotaSetPostponeTimerStateInfo(Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;)V

    .line 385
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tCurrentTime:J

    .line 386
    iget-wide v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->timerInterval:J

    iput-wide v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nPostPoneTime:J

    .line 387
    iget-wide v1, v8, Lcom/wssyncmldm/ui/XUIFotaPostponeTimerStateInfo;->nEndTime:J

    iput-wide v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    .line 388
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->nAfterDownLoadBatteryStatus:Z

    .line 389
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMDevinfAdapter;->xdmDevAdpGetFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->CurrentVersion:Ljava/lang/String;

    .line 391
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 392
    .local v7, PostPoneTime:Landroid/text/format/Time;
    iget-wide v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-virtual {v7, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostPoneTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_PRIVATE(Ljava/lang/String;)V

    .line 396
    invoke-static {v12}, Lcom/wssyncmldm/db/file/XDB;->xdbSetPostPoneTime(Ljava/lang/Object;)V

    .line 398
    const/16 v1, 0xdc

    if-eq v11, v1, :cond_cc

    const/16 v1, 0x32

    if-ne v11, v1, :cond_105

    .line 400
    :cond_cc
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 401
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 402
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 403
    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V

    .line 404
    const/16 v1, 0xdc

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFUMOStatus(I)V

    .line 405
    const-string v1, "xdbSetFUMOStatus  to XDL_STATE_POSTPONE_TO_UPDATE"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 411
    :goto_e8
    iget-wide v1, v12, Lcom/wssyncmldm/db/file/XDBPostPoneInfo;->tEndTime:J

    invoke-static {p0, v1, v2}, Lcom/wssyncmldm/ui/XUIFotaPostponeActivity;->xuiFotaPostponeStartTimer(Landroid/content/Context;J)V

    .line 412
    .end local v7           #PostPoneTime:Landroid/text/format/Time;
    :goto_ed
    return-void

    .line 369
    :cond_ee
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_53

    .line 371
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    .line 372
    const/4 v1, 0x0

    const/16 v2, 0xe3

    invoke-static {v1, v2}, Lcom/wssyncmldm/eng/core/XDMEvent;->XDMSetEvent(Ljava/lang/Object;I)V

    goto :goto_ed

    .line 409
    .restart local v7       #PostPoneTime:Landroid/text/format/Time;
    :cond_105
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/wssyncmldm/db/file/XDB;->xdbSetDownloadPostponeStatus(I)V

    goto :goto_e8
.end method
