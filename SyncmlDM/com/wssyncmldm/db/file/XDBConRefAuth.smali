.class public Lcom/wssyncmldm/db/file/XDBConRefAuth;
.super Ljava/lang/Object;
.source "XDBConRefAuth.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public PAP_ID:Ljava/lang/String;

.field public PAP_Secret:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_ID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/wssyncmldm/db/file/XDBConRefAuth;->PAP_Secret:Ljava/lang/String;

    .line 16
    return-void
.end method
