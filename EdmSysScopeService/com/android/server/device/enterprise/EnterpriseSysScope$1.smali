.class Lcom/android/server/device/enterprise/EnterpriseSysScope$1;
.super Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;
.source "EnterpriseSysScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/device/enterprise/EnterpriseSysScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/device/enterprise/EnterpriseSysScope;


# direct methods
.method constructor <init>(Lcom/android/server/device/enterprise/EnterpriseSysScope;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/server/device/enterprise/EnterpriseSysScope$1;->this$0:Lcom/android/server/device/enterprise/EnterpriseSysScope;

    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceRooted()Z
    .registers 3

    .prologue
    .line 24
    const-string v0, "EnterpriseSysScope"

    const-string v1, "isDeviceRooted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/server/device/enterprise/EnterpriseSysScope$1;->this$0:Lcom/android/server/device/enterprise/EnterpriseSysScope;

    invoke-virtual {v0}, Lcom/android/server/device/enterprise/EnterpriseSysScope;->isDeviceRooted()Z

    move-result v0

    return v0
.end method
