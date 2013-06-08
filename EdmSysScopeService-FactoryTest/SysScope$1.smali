.class Lcom/sec/android/app/sysscope/service/SysScope$1;
.super Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;
.source "SysScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sysscope/service/SysScope;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScope;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;)V
    .registers 4
    .parameter "isRooting"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onComplete(ZLjava/lang/String;)V

    .line 275
    :cond_11
    return-void
.end method

.method public onError(I)V
    .registers 3
    .parameter "errorCode"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 280
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    .line 281
    :cond_11
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .registers 4
    .parameter "curStage"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onProgress(ILjava/lang/String;)V

    .line 268
    :cond_11
    return-void
.end method

.method public onReady()V
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onReady()V

    .line 255
    :cond_11
    return-void
.end method

.method public onStart(I)V
    .registers 3
    .parameter "total"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onStart(I)V

    .line 261
    :cond_11
    return-void
.end method
