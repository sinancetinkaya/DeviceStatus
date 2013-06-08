.class public Lcom/wssyncmldm/XDMService$XDMLocalBinder;
.super Landroid/os/Binder;
.source "XDMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssyncmldm/XDMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XDMLocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wssyncmldm/XDMService;


# direct methods
.method public constructor <init>(Lcom/wssyncmldm/XDMService;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/wssyncmldm/XDMService$XDMLocalBinder;->this$0:Lcom/wssyncmldm/XDMService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/wssyncmldm/XDMService;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wssyncmldm/XDMService$XDMLocalBinder;->this$0:Lcom/wssyncmldm/XDMService;

    return-object v0
.end method
