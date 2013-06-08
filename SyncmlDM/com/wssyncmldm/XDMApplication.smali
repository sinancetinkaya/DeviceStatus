.class public Lcom/wssyncmldm/XDMApplication;
.super Landroid/app/Application;
.source "XDMApplication.java"


# static fields
.field private static m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static xdmGetContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/wssyncmldm/XDMApplication;->m_Context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .parameter "base"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 61
    sput-object p1, Lcom/wssyncmldm/XDMApplication;->m_Context:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 21
    sput-object p0, Lcom/wssyncmldm/XDMApplication;->m_Context:Landroid/content/Context;

    .line 22
    sget-object v0, Lcom/wssyncmldm/XDMApplication;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmSetReleaseVer(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMFeature;->xdmInitialize()V

    .line 24
    invoke-static {}, Lcom/wssyncmldm/adapter/XDMFeature;->xdmSecProductFeatureGetLog()V

    .line 26
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFotaStartStatus()I

    move-result v0

    if-nez v0, :cond_5f

    .line 28
    const-string v0, "XDM_FOTA_START flag not set....!"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/wssyncmldm/XDMApplication;->m_Context:Landroid/content/Context;

    invoke-static {v0}, Lcom/wssyncmldm/XDMService;->xdmGetAccountRegistration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 33
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFotaStartStatus()V

    .line 34
    const-string v0, "But Samsung Account exist "

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 35
    const-string v0, "XDMApplication Start !"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/XDMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    :goto_3a
    return-void

    .line 38
    :cond_3b
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbGetFUMOStatus()I

    move-result v0

    if-eqz v0, :cond_59

    .line 40
    invoke-static {}, Lcom/wssyncmldm/db/file/XDB;->xdbSetFotaStartStatus()V

    .line 41
    const-string v0, "But Fumo status not none "

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 42
    const-string v0, "XDMApplication Start !"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/XDMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3a

    .line 47
    :cond_59
    const-string v0, "DMApplication NOT Start !"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    goto :goto_3a

    .line 52
    :cond_5f
    const-string v0, "DMApplication Start !"

    invoke-static {v0}, Lcom/wssyncmldm/agent/XDMDebug;->XDM_DEBUG(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssyncmldm/XDMService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wssyncmldm/XDMApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3a
.end method
