.class Lcom/sec/android/app/camerafirmware/CameraFirmware$3;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camerafirmware/CameraFirmware;->startUpdateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$3;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camerafirmware/CameraFirmware$3;->this$0:Lcom/sec/android/app/camerafirmware/CameraFirmware;

    #calls: Lcom/sec/android/app/camerafirmware/CameraFirmware;->manageFirmware()V
    invoke-static {v0}, Lcom/sec/android/app/camerafirmware/CameraFirmware;->access$500(Lcom/sec/android/app/camerafirmware/CameraFirmware;)V

    .line 446
    return-void
.end method
