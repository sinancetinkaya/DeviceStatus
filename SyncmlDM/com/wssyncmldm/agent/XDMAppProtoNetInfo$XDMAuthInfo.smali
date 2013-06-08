.class public Lcom/wssyncmldm/agent/XDMAppProtoNetInfo$XDMAuthInfo;
.super Ljava/lang/Object;
.source "XDMAppProtoNetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/agent/XDMAppProtoNetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XDMAuthInfo"
.end annotation


# instance fields
.field public szId:Ljava/lang/String;

.field public szPasswd:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method
