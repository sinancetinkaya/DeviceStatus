.class public interface abstract Lcom/sec/factory/support/INVService;
.super Ljava/lang/Object;
.source "INVService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/factory/support/INVService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setTestNV(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract turnoffSupportService()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
