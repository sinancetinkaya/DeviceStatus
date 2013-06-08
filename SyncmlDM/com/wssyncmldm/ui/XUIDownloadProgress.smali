.class public Lcom/wssyncmldm/ui/XUIDownloadProgress;
.super Landroid/app/AlertDialog;
.source "XUIDownloadProgress.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# static fields
.field public static final DIALOG_MSG_UPDATE_UI:I = 0x1

.field private static m_lDeltaDownloadSize:J

.field private static m_lDeltaDownloadchecksize:J

.field private static m_lDeltaPackageTotalSize:J

.field private static m_lEndDownSize:J

.field private static m_lEndDownTime:J

.field private static m_lOneTermDownSize:J

.field private static m_lOneTermDownTime:J

.field private static m_lStartDownSize:J

.field private static m_lStartDownTime:J

.field private static m_nDownloadCount:I

.field private static m_nDownloadPercent:I

.field private static m_szDownloadRemainTime:Ljava/lang/String;

.field private static m_szDownloadSizeInfo:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final m_CancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final m_ClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_DownloadPercentageText:Landroid/widget/TextView;

.field private m_DownloadProgressbar:Landroid/widget/ProgressBar;

.field private m_DownloadSizeText:Landroid/widget/TextView;

.field private m_DownloadTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 40
    sput v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    .line 41
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    .line 43
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    .line 44
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadchecksize:J

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    .line 49
    sput v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    .line 50
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownSize:J

    .line 51
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownTime:J

    .line 52
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    .line 53
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownTime:J

    .line 54
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    .line 55
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownTime:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5
    .parameter "context"
    .parameter "clickListener"
    .parameter "cancelListener"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadProgressbar:Landroid/widget/ProgressBar;

    .line 36
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadPercentageText:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadSizeText:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadTimeText:Landroid/widget/TextView;

    .line 57
    new-instance v0, Lcom/wssyncmldm/ui/XUIDownloadProgress$1;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/ui/XUIDownloadProgress$1;-><init>(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V

    iput-object v0, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p2, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_ClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    iput-object p3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_CancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiUpdateDownloadProgressBar()V

    return-void
.end method

.method private xuiDownloadDialogEnableButton(IZ)V
    .registers 4
    .parameter "whichButton"
    .parameter "bEnable"

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 137
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    return-void
.end method

.method public static xuiDownloadProgressInit()V
    .registers 3

    .prologue
    const-wide/16 v1, 0x0

    .line 252
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    .line 255
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    .line 256
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    .line 257
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadchecksize:J

    .line 259
    const-string v0, ""

    sput-object v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 260
    const-string v0, "00:00:00"

    sput-object v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public static xuiDownloadTimeInit()V
    .registers 3

    .prologue
    const-wide/16 v1, 0x0

    .line 238
    const-string v0, ""

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 240
    const-string v0, "00:00:00"

    sput-object v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    sput v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    .line 242
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownSize:J

    .line 243
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownTime:J

    .line 244
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    .line 245
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownTime:J

    .line 246
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    .line 247
    sput-wide v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownTime:J

    .line 248
    return-void
.end method

.method public static xuiGetDownloadPercent()I
    .registers 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownloadPercent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 317
    sget v0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    return v0
.end method

.method public static xuiSetDeltaTotalSize(J)V
    .registers 4
    .parameter "deltaPackageTotalSize"

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deltaPackageTotalSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 266
    sput-wide p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    .line 267
    return-void
.end method

.method private static xuiSetDownloadTime(J)V
    .registers 17
    .parameter "nDownloadSize"

    .prologue
    .line 173
    const/4 v2, 0x6

    .line 174
    .local v2, DOWNLOADTIME_CHECK_START_COUNT:I
    const/16 v0, 0x14

    .line 175
    .local v0, DOWNLOADTIME_CHECK_END_COUNT:I
    const/16 v1, 0x32

    .line 177
    .local v1, DOWNLOADTIME_CHECK_RESET_COUNT:I
    const-wide/16 v5, 0x0

    .line 178
    .local v5, lDownTime:J
    const-wide/16 v8, 0x0

    .line 179
    .local v8, nDownRemainData:J
    const/4 v10, 0x0

    .line 180
    .local v10, nDownTermCount:I
    const/4 v7, 0x0

    .line 182
    .local v7, nChangePercent:I
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 183
    .local v3, calendar:Ljava/util/GregorianCalendar;
    sget v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    .line 185
    sget v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_45

    .line 187
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownTime:J

    .line 188
    sput-wide p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownSize:J

    .line 228
    :cond_23
    :goto_23
    sget v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    const/16 v12, 0x32

    if-le v11, v12, :cond_2c

    .line 230
    const/4 v11, 0x0

    sput v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    .line 233
    :cond_2c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownloadRemainTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 234
    return-void

    .line 190
    :cond_45
    sget v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    const/16 v12, 0x14

    if-ne v11, v12, :cond_bb

    .line 192
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    sget-wide v13, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownTime:J

    sub-long/2addr v11, v13

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownTime:J

    .line 193
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lStartDownSize:J

    sub-long v11, p0, v11

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    .line 195
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6b

    .line 197
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    .line 198
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownTime:J

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownTime:J

    goto :goto_23

    .line 202
    :cond_6b
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    long-to-int v11, v11

    mul-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    sget-wide v13, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    div-long/2addr v11, v13

    long-to-int v7, v11

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lOneTermDownSize : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] lEndDownSize : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] nChangePercent : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 206
    const/16 v11, 0x3c

    if-lt v7, v11, :cond_b1

    const/16 v11, 0x8c

    if-le v7, v11, :cond_23

    .line 208
    :cond_b1
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownSize:J

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    .line 209
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lEndDownTime:J

    sput-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownTime:J

    goto/16 :goto_23

    .line 213
    :cond_bb
    sget v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadCount:I

    const/16 v12, 0x14

    if-le v11, v12, :cond_23

    .line 215
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    sub-long v8, v11, p0

    .line 216
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_f2

    .line 218
    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownSize:J

    div-long v11, v8, v11

    long-to-int v10, v11

    .line 219
    int-to-long v11, v10

    sget-wide v13, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lOneTermDownTime:J

    mul-long v5, v11, v13

    .line 221
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "HH:mm:ss"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v11, "GMT+0"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 223
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    .line 225
    .end local v4           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_f2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nDownRemainData : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto/16 :goto_23
.end method

.method public static xuiUpdateDownloadInfo()V
    .registers 13

    .prologue
    .line 272
    const-wide/16 v3, 0x0

    .line 273
    .local v3, nDownloadSize:J
    const/4 v6, 0x0

    .line 275
    .local v6, nPercentage:I
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileIdFirmwareData()I

    move-result v5

    .line 276
    .local v5, nFileId:I
    invoke-static {v5}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFileSize(I)I

    move-result v9

    int-to-long v3, v9

    .line 278
    sget-wide v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_21

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_21

    .line 280
    const-wide/16 v9, 0x64

    mul-long/2addr v9, v3

    sget-wide v11, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    div-long/2addr v9, v11

    long-to-int v6, v9

    .line 282
    :cond_21
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Percentate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 285
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_c9

    sget-wide v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_c9

    .line 289
    :try_start_4b
    new-instance v0, Ljava/math/BigDecimal;

    long-to-double v9, v3

    const-wide/high16 v11, 0x4130

    div-double/2addr v9, v11

    invoke-direct {v0, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 290
    .local v0, bd_recv:Ljava/math/BigDecimal;
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 291
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, szDownloadRecvSize:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "szDownloadRecvSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ljava/math/BigDecimal;

    sget-wide v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    long-to-double v9, v9

    const-wide/high16 v11, 0x4130

    div-double/2addr v9, v11

    invoke-direct {v1, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 295
    .local v1, bd_total:Ljava/math/BigDecimal;
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 296
    const-string v9, "%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, szDownloadTotalSize:Ljava/lang/String;
    sput-object v7, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 299
    sget-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    const-string v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 300
    sget-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 301
    sget-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    .line 302
    sget-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    const-string v10, "MB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/ArithmeticException; {:try_start_4b .. :try_end_c9} :catch_d1

    .line 309
    .end local v0           #bd_recv:Ljava/math/BigDecimal;
    .end local v1           #bd_total:Ljava/math/BigDecimal;
    .end local v7           #szDownloadRecvSize:Ljava/lang/String;
    .end local v8           #szDownloadTotalSize:Ljava/lang/String;
    :cond_c9
    :goto_c9
    invoke-static {v3, v4}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiSetDownloadTime(J)V

    .line 310
    sput-wide v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    .line 311
    sput v6, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    .line 312
    return-void

    .line 304
    :catch_d1
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/ArithmeticException;
    invoke-virtual {v2}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_c9
.end method

.method private xuiUpdateDownloadProgressBar()V
    .registers 7

    .prologue
    .line 142
    const v0, 0x4b000

    .line 146
    .local v0, INDICATOR_CHECK_SIZE:I
    :try_start_3
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadTimeText:Landroid/widget/TextView;

    sget-object v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget-wide v2, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    sget-wide v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadchecksize:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    sget-wide v2, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    sget-wide v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_53

    .line 150
    :cond_1a
    sget-wide v2, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadchecksize:J

    const-wide/32 v4, 0x4b000

    add-long/2addr v2, v4

    sput-wide v2, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadchecksize:J

    .line 152
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadProgressbar:Landroid/widget/ProgressBar;

    sget v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 153
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadPercentageText:Landroid/widget/TextView;

    sget v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadSizeText:Landroid/widget/TextView;

    sget-object v3, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    sget-wide v2, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaDownloadSize:J

    sget-wide v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_lDeltaPackageTotalSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    .line 159
    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiDownloadDialogEnableButton(IZ)V

    .line 162
    :cond_4e
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/wssyncmldm/ui/XUINotificationManager;->xuiSetIndicator(I)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_54

    .line 169
    :cond_53
    :goto_53
    return-void

    .line 165
    :catch_54
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_53
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 86
    const-string v3, ""

    invoke-static {v3}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->xuiUpdateDownloadInfo()V

    .line 89
    invoke-virtual {p0}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 91
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, downloadView:Landroid/view/View;
    const v3, 0x7f090033

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadProgressbar:Landroid/widget/ProgressBar;

    .line 93
    const v3, 0x7f090034

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadPercentageText:Landroid/widget/TextView;

    .line 94
    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadSizeText:Landroid/widget/TextView;

    .line 95
    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadTimeText:Landroid/widget/TextView;

    .line 96
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadProgressbar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 97
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadProgressbar:Landroid/widget/ProgressBar;

    sget v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadPercentageText:Landroid/widget/TextView;

    sget v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_nDownloadPercent:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadTimeText:Landroid/widget/TextView;

    sget-object v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadRemainTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_DownloadSizeText:Landroid/widget/TextView;

    sget-object v4, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_szDownloadSizeInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setTitle(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setView(Landroid/view/View;)V

    .line 104
    const/4 v3, -0x1

    const v4, 0x7f070036

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_ClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    const/4 v3, -0x2

    const v4, 0x7f070024

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_ClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    iget-object v3, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->m_CancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 107
    new-instance v3, Lcom/wssyncmldm/ui/XUIDownloadProgress$2;

    invoke-direct {v3, p0}, Lcom/wssyncmldm/ui/XUIDownloadProgress$2;-><init>(Lcom/wssyncmldm/ui/XUIDownloadProgress;)V

    invoke-virtual {p0, v3}, Lcom/wssyncmldm/ui/XUIDownloadProgress;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 118
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public xuiSendMessage(I)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 125
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/wssyncmldm/ui/XUIDownloadProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 132
    :goto_1b
    return-void

    .line 128
    :catch_1c
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_1b
.end method
