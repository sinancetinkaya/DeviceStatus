.class public Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;
.super Ljava/lang/Object;
.source "XDBUICResultKeepInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public UICType:I

.field public appId:I

.field public eStatus:I

.field public m_szText:Ljava/lang/String;

.field public nLen:I

.field public nSize:I

.field public number:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBUICResultKeepInfo;->m_szText:Ljava/lang/String;

    .line 21
    return-void
.end method
