.class public Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMDNSAddr;
.super Ljava/lang/Object;
.source "XDMAppProtoNetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDMDNSAddr"
.end annotation


# instance fields
.field public szIpv4:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMDNSAddr;->szIpv4:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMDNSAddr;->szIpv4:Ljava/lang/String;

    .line 94
    return-void
.end method
