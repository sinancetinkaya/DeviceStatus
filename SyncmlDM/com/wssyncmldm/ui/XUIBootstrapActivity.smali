.class public Lcom/wssyncmldm/ui/XUIBootstrapActivity;
.super Landroid/app/Activity;
.source "XUIBootstrapActivity.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XNOTIInterface;
.implements Lcom/wssyncmldm/interfaces/XUIInterface;


# static fields
.field private static final DIALOG_BOOTSTRAP_4_INPUT_PINCODE:I = 0x6

.field private static final DIALOG_BOOTSTRAP_DELETE:I = 0x2

.field private static final DIALOG_BOOTSTRAP_INSTALL:I = 0x1

.field private static final DIALOG_BOOTSTRAP_INSTALL_ING:I = 0x7

.field private static final DIALOG_BOOTSTRAP_MAXPROFILE:I = 0x4

.field private static final DIALOG_BOOTSTRAP_PINCODE:I = 0x5

.field private static final DIALOG_BOOTSTRAP_SAMEPROFILE:I = 0x3

.field private static m_byInboxdata:[B

.field public static m_hBootStrapHandler:Landroid/os/Handler;

.field private static m_nCnt:I

.field private static m_nProfileIndex:I


# instance fields
.field private m_Context:Landroid/content/Context;

.field private m_Install:Landroid/widget/Button;

.field private m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;

.field private m_szInstallState:Ljava/lang/String;

.field private m_szItemProfile:[Ljava/lang/String;

.field private m_szResponseText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    .line 51
    sput v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nProfileIndex:I

    .line 52
    sput v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nCnt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Install:Landroid/widget/Button;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szInstallState:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nProfileIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wssyncmldm/ui/XUIBootstrapActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szResponseText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nCnt:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    sput p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nCnt:I

    return p0
.end method

.method static synthetic access$208()I
    .registers 2

    .prologue
    .line 36
    sget v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nCnt:I

    return v0
.end method

.method static synthetic access$300(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Lcom/wssyncmldm/noti/XNOTIAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szInstallState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wssyncmldm/ui/XUIBootstrapActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szInstallState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method private xuiBootstrapDataView()Z
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 426
    const-string v1, "DM Bootstrap Message"

    .line 427
    .local v1, BootProfile:Ljava/lang/String;
    const/4 v0, 0x0

    .line 428
    .local v0, BootDate:Ljava/lang/String;
    const/4 v4, 0x0

    .line 430
    .local v4, date:Ljava/lang/String;
    invoke-static {}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushGetDate()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 434
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 435
    .local v5, date1:Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .end local v5           #date1:Ljava/util/Date;
    :cond_18
    :goto_18
    const v7, 0x7f090001

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 450
    .local v3, Text:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const v7, 0x7f090002

    invoke-virtual {p0, v7}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #Text:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 452
    .restart local v3       #Text:Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    return v11

    .line 439
    .end local v3           #Text:Landroid/widget/TextView;
    :cond_31
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 440
    .local v2, MsgRecvTime:Landroid/text/format/Time;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 441
    .local v6, ldate:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 442
    if-eqz v2, :cond_18

    .line 444
    const-string v7, "%d-%d-%d %d:%d:%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v2, Landroid/text/format/Time;->year:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    iget v9, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    iget v10, v2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget v10, v2, Landroid/text/format/Time;->second:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public static xuiGetInboxData()[B
    .registers 1

    .prologue
    .line 464
    sget-object v0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_byInboxdata:[B

    return-object v0
.end method

.method public static xuiSetInboxData([B)V
    .registers 1
    .parameter "data"

    .prologue
    .line 459
    sput-object p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_byInboxdata:[B

    .line 460
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->setContentView(I)V

    .line 284
    sget-object v1, Lcom/wssyncmldm/db/file/XDB;->XDMNvmClass:Lcom/wssyncmldm/db/file/XDBNvm;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBNvm;->tProfileList:Lcom/wssyncmldm/db/file/XDBProflieListInfo;

    iget-object v1, v1, Lcom/wssyncmldm/db/file/XDBProflieListInfo;->ProfileName:[Ljava/lang/String;

    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szItemProfile:[Ljava/lang/String;

    .line 285
    iput-object p0, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Context:Landroid/content/Context;

    .line 287
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;

    if-nez v1, :cond_1d

    .line 288
    new-instance v1, Lcom/wssyncmldm/noti/XNOTIAdapter;

    invoke-direct {v1}, Lcom/wssyncmldm/noti/XNOTIAdapter;-><init>()V

    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;

    .line 290
    :cond_1d
    sget-object v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_byInboxdata:[B

    if-eqz v1, :cond_2c

    .line 291
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_PushAdp:Lcom/wssyncmldm/noti/XNOTIAdapter;

    sget-object v2, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_byInboxdata:[B

    sget-object v3, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_byInboxdata:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/wssyncmldm/noti/XNOTIAdapter;->xnotiPushAdpReceiveMsg([BILjava/lang/String;)Z

    .line 293
    :cond_2c
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->xuiBootstrapDataView()Z

    .line 295
    new-instance v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$18;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    sput-object v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_hBootStrapHandler:Landroid/os/Handler;

    .line 374
    const v1, 0x7f090003

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Install:Landroid/widget/Button;

    .line 375
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_Install:Landroid/widget/Button;

    new-instance v2, Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;

    invoke-direct {v2, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$19;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 405
    .local v0, bCancel:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 406
    new-instance v1, Lcom/wssyncmldm/ui/XUIBootstrapActivity$20;

    invoke-direct {v1, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$20;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f07002d

    const v5, 0x7f070004

    const v7, 0x108009b

    const v6, 0x1010355

    .line 63
    sparse-switch p1, :sswitch_data_1ce

    .line 276
    :goto_10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v4

    :goto_14
    return-object v4

    .line 66
    :sswitch_15
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v9}, Lcom/wssyncmldm/XDMService;->xdmShowToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_10

    .line 70
    :sswitch_20
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_szItemProfile:[Ljava/lang/String;

    sget v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity;->m_nProfileIndex:I

    new-instance v7, Lcom/wssyncmldm/ui/XUIBootstrapActivity$4;

    invoke-direct {v7, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$4;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070035

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$3;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$3;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07002b

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$2;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$2;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$1;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$1;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_14

    .line 101
    :sswitch_5f
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070035

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$7;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$7;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07002b

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$6;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$6;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$5;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_14

    .line 125
    :sswitch_95
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070027

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$10;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$10;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070024

    new-instance v6, Lcom/wssyncmldm/ui/XUIBootstrapActivity$9;

    invoke-direct {v6, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$9;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$8;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$8;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 149
    :sswitch_cc
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 150
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, textEntryView:Landroid/view/View;
    const-string v0, "PINCODE"

    .line 153
    .local v0, PINCODE:Ljava/lang/String;
    const v4, 0x7f090016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 154
    .local v2, text:Landroid/widget/EditText;
    new-instance v4, Lcom/wssyncmldm/ui/XUIBootstrapActivity$11;

    invoke-direct {v4, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$11;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$13;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$12;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$12;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 204
    .end local v0           #PINCODE:Ljava/lang/String;
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #text:Landroid/widget/EditText;
    .end local v3           #textEntryView:Landroid/view/View;
    :sswitch_118
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070015

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$14;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$14;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 218
    :sswitch_142
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$15;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 236
    :sswitch_169
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$16;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$16;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 251
    :sswitch_190
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;

    invoke-direct {v5, p0}, Lcom/wssyncmldm/ui/XUIBootstrapActivity$17;-><init>(Lcom/wssyncmldm/ui/XUIBootstrapActivity;)V

    invoke-virtual {v4, v8, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 268
    :sswitch_1b7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_14

    .line 63
    nop

    :sswitch_data_1ce
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_20
        0x3 -> :sswitch_5f
        0x4 -> :sswitch_95
        0x5 -> :sswitch_cc
        0x6 -> :sswitch_118
        0x7 -> :sswitch_1b7
        0xb6 -> :sswitch_190
        0xb7 -> :sswitch_142
        0xb8 -> :sswitch_169
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 420
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 422
    return-void
.end method
