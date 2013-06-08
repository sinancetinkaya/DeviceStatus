.class Lcom/wssyncmldm/tp/XTPAdapter$2;
.super Ljava/lang/Object;
.source "XTPAdapter.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wssyncmldm/tp/XTPAdapter;->xtpAdpOpen(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/tp/XTPAdapter;


# direct methods
.method constructor <init>(Lcom/wssyncmldm/tp/XTPAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/wssyncmldm/tp/XTPAdapter$2;->this$0:Lcom/wssyncmldm/tp/XTPAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 547
    const-string v0, "Handshake finished!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 548
    return-void
.end method
