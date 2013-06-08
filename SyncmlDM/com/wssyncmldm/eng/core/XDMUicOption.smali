.class public Lcom/wssyncmldm/eng/core/XDMUicOption;
.super Ljava/lang/Object;
.source "XDMUicOption.java"

# interfaces
.implements Lcom/wssyncmldm/interfaces/XUICInterface;


# instance fields
.field public UICType:I

.field public appId:I

.field public defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

.field public echoType:I

.field public inputType:I

.field public m_szUicMenuTitle:Ljava/lang/String;

.field public maxDT:I

.field public maxLen:I

.field public minDT:I

.field public progrCurSize:J

.field public progrMaxSize:J

.field public progrType:I

.field public text:Lcom/wssyncmldm/eng/core/XDMText;

.field public uicMenuList:[Ljava/lang/String;

.field public uicMenuNumbers:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMUicOption;->uicMenuList:[Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMUicOption;->text:Lcom/wssyncmldm/eng/core/XDMText;

    .line 29
    new-instance v0, Lcom/wssyncmldm/eng/core/XDMText;

    invoke-direct {v0}, Lcom/wssyncmldm/eng/core/XDMText;-><init>()V

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMUicOption;->defaultResponse:Lcom/wssyncmldm/eng/core/XDMText;

    .line 30
    return-void
.end method
