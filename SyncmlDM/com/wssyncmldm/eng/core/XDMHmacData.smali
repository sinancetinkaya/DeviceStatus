.class public Lcom/wssyncmldm/eng/core/XDMHmacData;
.super Ljava/lang/Object;
.source "XDMHmacData.java"


# instance fields
.field public httpContentLength:I

.field public httpHeaderLength:I

.field public m_szHmacAlgorithm:Ljava/lang/String;

.field public m_szHmacDigest:Ljava/lang/String;

.field public m_szHmacUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacAlgorithm:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacUserName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/eng/core/XDMHmacData;->m_szHmacDigest:Ljava/lang/String;

    .line 16
    return-void
.end method
