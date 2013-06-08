.class public Lcom/wssyncmldm/eng/core/XDMUicResult;
.super Ljava/lang/Object;
.source "XDMUicResult.java"


# instance fields
.field public MenuNumbers:I

.field public MultiSelected:[I

.field public SingleSelected:I

.field public UICType:I

.field UIC_MAX_CHOICE_MENU:I

.field public appId:I

.field public result:I

.field public text:Lcom/wssyncmldm/eng/core/XDMText;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x20

    iput v0, p0, Lcom/wssyncmldm/eng/core/XDMUicResult;->UIC_MAX_CHOICE_MENU:I

    .line 19
    iget v0, p0, Lcom/wssyncmldm/eng/core/XDMUicResult;->UIC_MAX_CHOICE_MENU:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMUicResult;->MultiSelected:[I

    .line 20
    return-void
.end method
