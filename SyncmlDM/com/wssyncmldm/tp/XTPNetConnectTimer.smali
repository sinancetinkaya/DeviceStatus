.class public Lcom/wssyncmldm/tp/XTPNetConnectTimer;
.super Ljava/lang/Object;
.source "XTPNetConnectTimer.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XTPInterface;
.implements Lcom/wssyncmldm/interfaces/XDMInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;
    }
.end annotation


# static fields
.field private static m_ConnectTimer:Ljava/util/Timer;

.field private static m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

.field private static m_nAppId:I

.field private static m_nConnectCount:I


# instance fields
.field private final XTP_CONNECT_TIMER:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    sput-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    .line 15
    sput-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    .line 16
    sput v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    .line 17
    sput v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nAppId:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "appId"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x3c

    iput v0, p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->XTP_CONNECT_TIMER:I

    .line 23
    new-instance v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    invoke-direct {v0, p0}, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;-><init>(Lcom/wssyncmldm/tp/XTPNetConnectTimer;)V

    sput-object v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    .line 24
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    .line 25
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->xtpNetConnStartTimer()V

    .line 27
    sput p1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nAppId:I

    .line 28
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 12
    sget v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 12
    sput p0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    return p0
.end method

.method static synthetic access$008()I
    .registers 2

    .prologue
    .line 12
    sget v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 12
    sget v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nAppId:I

    return v0
.end method

.method public static xtpNetConnEndTimer()V
    .registers 2

    .prologue
    .line 39
    const/4 v1, 0x0

    :try_start_1
    sput v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nConnectCount:I

    .line 40
    const/4 v1, 0x0

    sput v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_nAppId:I

    .line 42
    sget-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    if-nez v1, :cond_f

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :cond_e
    :goto_e
    return-void

    .line 45
    .end local v0           #e:Ljava/lang/Exception;
    :cond_f
    const-string v1, "=====================>> endTimer(connect)"

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 47
    sget-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    invoke-virtual {v1}, Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;->cancel()Z

    .line 49
    const/4 v1, 0x0

    sput-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    .line 50
    const/4 v1, 0x0

    sput-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    .line 52
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetRecvTimer;->xtpNetRecvEndTimer()V

    .line 53
    invoke-static {}, Lcom/wssyncmldm/tp/XTPNetSendTimer;->xtpEndTimer()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_e

    .line 56
    :catch_2b
    move-exception v0

    .line 58
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG_EXCEPTION(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public static xtpNetConnStartTimer()V
    .registers 5

    .prologue
    .line 32
    sget-object v0, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_ConnectTimer:Ljava/util/Timer;

    sget-object v1, Lcom/wssyncmldm/tp/XTPNetConnectTimer;->m_TpConnectTimer:Lcom/wssyncmldm/tp/XTPNetConnectTimer$XTPHttpConnectTimerTask;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 33
    return-void
.end method
